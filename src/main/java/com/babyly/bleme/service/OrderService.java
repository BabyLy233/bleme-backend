package com.babyly.bleme.service;

import com.babyly.bleme.bean.CartItem;
import com.babyly.bleme.bean.Result;
import com.babyly.bleme.bean.VO.OrderVO;

import java.util.List;

public interface OrderService {
    Result<String> addOrder(List<CartItem> list, Integer userId);

    Result<OrderVO> getOrdersList(Integer userId);
}
