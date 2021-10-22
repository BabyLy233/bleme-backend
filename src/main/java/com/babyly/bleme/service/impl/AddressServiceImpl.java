package com.babyly.bleme.service.impl;

import com.babyly.bleme.bean.PO.AddressPO;
import com.babyly.bleme.bean.Result;
import com.babyly.bleme.bean.VO.AddressVO;
import com.babyly.bleme.mapper.POMapper.AddressPOMapper;
import com.babyly.bleme.service.AddressService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class AddressServiceImpl implements AddressService {

    @Autowired
    private AddressPOMapper addressPOMapper;

    @Override
    @Transactional(rollbackFor = {RuntimeException.class, Error.class})
    public Result<String> addAddress(AddressVO addressVO, Integer userId) {
        Result<String> result = new Result<>();
        result.setStatus(500);
        result.setMessage("地址添加失败");

        AddressPO addressPO = new AddressPO();
        addressPO.setUserId(userId);
        resetAddressPO(addressVO, addressPO);

        if (addressVO.getIsDefault()) {
            QueryWrapper<AddressPO> wrapper = new QueryWrapper<>();
            wrapper.eq("is_default", 1);
            AddressPO objIsDefault = addressPOMapper.selectOne(wrapper);
            if (objIsDefault != null) {
                objIsDefault.setIsDefault(false);
                addressPOMapper.updateById(objIsDefault);
            }
        }

        addressPOMapper.insert(addressPO);
        result.setStatus(200);
        result.setMessage("地址添加成功");
        return result;
    }

    @Override
    public Result<List<AddressVO>> getAddress(Integer userId) {
        Result<List<AddressVO>> result = new Result<>();
        result.setStatus(500);
        result.setMessage("地址获取失败");

        QueryWrapper<AddressPO> wrapper = new QueryWrapper<>();
        wrapper.eq("user_id", userId);
        List<AddressPO> addressPOS = addressPOMapper.selectList(wrapper);

        List<AddressVO> list = new ArrayList<>();

        for (AddressPO addressPO : addressPOS) {
            AddressVO addressVO = new AddressVO();
            addressVO.setName(addressPO.getName());
            addressVO.setTel(addressPO.getPhone());
            addressVO.setProvince(addressPO.getProvince());
            addressVO.setCity(addressPO.getCity());
            addressVO.setCounty(addressPO.getCounty());
            addressVO.setAddressDetail(addressPO.getAddressDetail());
            addressVO.setIsDefault(addressPO.getIsDefault());
            addressVO.setAddressId(addressPO.getAddressId());
            list.add(addressVO);
        }

        result.setStatus(200);
        result.setDetail(list);
        result.setMessage("地址获取成功");
        return result;
    }

    @Override
    @Transactional(rollbackFor = {RuntimeException.class, Error.class})
    public Result<String> editAddress(AddressVO addressVO, Integer addressId) {
        Result<String> result = new Result<>();
        result.setStatus(500);
        result.setMessage("地址修改失败");

        AddressPO addressPO = addressPOMapper.selectById(addressId);
        resetAddressPO(addressVO, addressPO);

        if (addressVO.getIsDefault() == addressPO.getIsDefault()) {
            QueryWrapper<AddressPO> wrapper = new QueryWrapper<>();
            wrapper.eq("is_default", 1);
            AddressPO objIsDefault = addressPOMapper.selectOne(wrapper);
            objIsDefault.setIsDefault(false);
            addressPOMapper.updateById(objIsDefault);
        }

        addressPOMapper.updateById(addressPO);
        result.setStatus(200);
        result.setMessage("地址修改成功");
        return result;
    }

    @Override
    @Transactional(rollbackFor = {RuntimeException.class, Error.class})
    public Result<String> delAddress(Integer addressId) {
        Result<String> result = new Result<>();
        result.setStatus(500);
        result.setMessage("地址删除失败");

        AddressPO goingDel = addressPOMapper.selectById(addressId);
        if (goingDel.getIsDefault()) {
            QueryWrapper<AddressPO> wrapper = new QueryWrapper<>();
            wrapper.eq("user_id", goingDel.getUserId());
            List<AddressPO> addressPOS = addressPOMapper.selectList(wrapper);

            for (AddressPO addressPO : addressPOS) {
                if (!addressPO.getIsDefault()) {
                    addressPO.setIsDefault(true);
                    addressPOMapper.updateById(addressPO);
                    break;
                }
            }

        }

        addressPOMapper.deleteById(addressId);

        result.setStatus(200);
        result.setMessage("地址删除成功");
        return result;
    }

    private void resetAddressPO(AddressVO addressVO, AddressPO addressPO) {
        addressPO.setName(addressVO.getName());
        addressPO.setPhone(addressVO.getTel());
        addressPO.setProvince(addressVO.getProvince());
        addressPO.setCity(addressVO.getCity());
        addressPO.setCounty(addressVO.getCounty());
        addressPO.setAddressDetail(addressVO.getAddressDetail());
        addressPO.setIsDefault(addressVO.getIsDefault());
    }

}
