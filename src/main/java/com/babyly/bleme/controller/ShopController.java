package com.babyly.bleme.controller;

import com.babyly.bleme.bean.Good;
import com.babyly.bleme.bean.InShopCategory;
import com.babyly.bleme.bean.Result;
import com.babyly.bleme.bean.Shop;
import com.babyly.bleme.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/shop")
public class ShopController {

    @Autowired
    private ShopService shopService;

    @GetMapping("/recommend")
    public Result<List<Shop>> getRecommendShops() {
        return shopService.getRecommendShops();
    }

    @GetMapping("/in/category")
    public Result<List<InShopCategory>> getIsCate(Integer shopId) {
        return shopService.getIsCate(shopId);
    }

    @GetMapping("/in/category/goods")
    public Result<List<Good>> getIsCate(Integer shopId, Integer cateId) {
        return shopService.getGoodsInCate(shopId, cateId);
    }
}
