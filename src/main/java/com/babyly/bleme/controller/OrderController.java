package com.babyly.bleme.controller;

import com.babyly.bleme.bean.CartItem;
import com.babyly.bleme.bean.Result;
import com.babyly.bleme.bean.VO.OrderVO;
import com.babyly.bleme.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/order")
public class OrderController {

    @Autowired
    private OrderService orderService;

    @PostMapping("/add")
    public Result<String> addOrder(@RequestBody List<CartItem> list, @RequestParam("userId") Integer userId) {
        return orderService.addOrder(list, userId);
    }

    @GetMapping("/get")
    Result<OrderVO> getOrdersList(@RequestParam("userId") Integer userId) {
        return orderService.getOrdersList(userId);
    }
}
