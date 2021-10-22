package com.babyly.bleme.service;

import com.babyly.bleme.bean.Result;
import com.babyly.bleme.bean.VO.AddressVO;

import java.util.List;

public interface AddressService {
    Result<String> addAddress(AddressVO addressVO, Integer userId);

    Result<List<AddressVO>> getAddress(Integer userId);

    Result<String> editAddress(AddressVO addressVO, Integer addressId);

    Result<String> delAddress(Integer addressId);
}
