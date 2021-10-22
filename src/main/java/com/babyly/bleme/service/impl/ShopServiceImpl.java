package com.babyly.bleme.service.impl;

import com.babyly.bleme.bean.Good;
import com.babyly.bleme.bean.InShopCategory;
import com.babyly.bleme.bean.Result;
import com.babyly.bleme.bean.Shop;
import com.babyly.bleme.mapper.GoodMapper;
import com.babyly.bleme.mapper.IsCateMapper;
import com.babyly.bleme.mapper.ShopMapper;
import com.babyly.bleme.service.ShopService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ShopServiceImpl implements ShopService {

    @Autowired
    private ShopMapper shopMapper;
    @Autowired
    private IsCateMapper isCateMapper;
    @Autowired
    private GoodMapper goodMapper;

    @Override
    public Result<List<Shop>> getRecommendShops() {
        Result<List<Shop>> result = new Result<>();
        result.setStatus(500);
        result.setDetail(null);
        result.setMessage("店铺获取失败");

        QueryWrapper<Shop> wrapper = new QueryWrapper<>();
        wrapper.eq("is_recommended", 1);
        List<Shop> shops = shopMapper.selectList(wrapper);

        if (shops == null) {
            result.setStatus(200);
            return result;
        }
        result.setDetail(shops);
        result.setStatus(200);
        result.setMessage("店铺获取成功");
        return result;
    }

    @Override
    public Result<List<InShopCategory>> getIsCate(Integer shopId) {
        Result<List<InShopCategory>> result = new Result<>();
        result.setStatus(500);
        result.setDetail(null);
        result.setMessage("店内商品分类获取失败");

        QueryWrapper<InShopCategory> wrapper = new QueryWrapper<>();
        wrapper.eq("shop_id", shopId);
        List<InShopCategory> inShopCategories = isCateMapper.selectList(wrapper);
        if (inShopCategories == null) {
            result.setStatus(200);
            result.setMessage("未查询到店内商品分类");
        }

        result.setDetail(inShopCategories);
        result.setStatus(200);
        result.setMessage("店内商品分类获取成功");
        return result;
    }

    @Override
    public Result<List<Good>> getGoodsInCate(Integer shopId, Integer cateId) {
        Result<List<Good>> result = new Result<>();
        result.setStatus(500);
        result.setDetail(null);
        result.setMessage("该分类商品获取失败");

        QueryWrapper<Good> wrapper = new QueryWrapper<>();
        wrapper.eq("shop_id",shopId)
                .eq("category_id",cateId);
        List<Good> goods = goodMapper.selectList(wrapper);

        if (goods == null) {
            result.setStatus(200);
            result.setMessage("未查询到该分类商品");
        }

        result.setStatus(200);
        result.setDetail(goods);
        result.setMessage("该分类商品获取成功");
        return result;
    }
}
