package com.babyly.bleme.service;

import com.babyly.bleme.bean.Good;
import com.babyly.bleme.bean.InShopCategory;
import com.babyly.bleme.bean.Result;
import com.babyly.bleme.bean.Shop;

import java.util.List;

public interface ShopService {
    Result<List<Shop>> getRecommendShops();

    Result<List<InShopCategory>> getIsCate(Integer shopId);

    Result<List<Good>> getGoodsInCate(Integer shopId, Integer cateId);
}
