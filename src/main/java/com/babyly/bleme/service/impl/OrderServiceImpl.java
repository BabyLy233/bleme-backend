package com.babyly.bleme.service.impl;

import com.babyly.bleme.bean.CartItem;
import com.babyly.bleme.bean.PO.OrderItemPO;
import com.babyly.bleme.bean.PO.OrderListPO;
import com.babyly.bleme.bean.Result;
import com.babyly.bleme.bean.VO.OrderVO;
import com.babyly.bleme.mapper.POMapper.OrderItemPOMapper;
import com.babyly.bleme.mapper.POMapper.OrderListPOMapper;
import com.babyly.bleme.service.OrderService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderListPOMapper orderListPOMapper;
    @Autowired
    private OrderItemPOMapper orderItemPOMapper;

    @Override
    @Transactional(rollbackFor = {RuntimeException.class, Error.class})
    public Result<String> addOrder(List<CartItem> list, Integer userId) {
        Result<String> result = new Result<>();
        result.setStatus(500);
        result.setMessage("订单添加失败");

        Integer totalNum = 0;
        double totalPrice = 0;

        for (CartItem cartItem : list) {
            totalNum += cartItem.getNum();
            double v = cartItem.getGood().getPresentPrice() * cartItem.getNum();
            totalPrice += v;
        }

        OrderListPO orderListPO = new OrderListPO();
        orderListPO.setTotalNum(totalNum);
        orderListPO.setTotalPrice(totalPrice);
        orderListPO.setUserId(userId);

        orderListPOMapper.insert(orderListPO);
        String orderId = orderListPO.getOrderId();
        for (CartItem cartItem : list) {
            OrderItemPO orderItemPO = new OrderItemPO();
            orderItemPO.setOrderId(orderId);
            orderItemPO.setItemId(cartItem.getGood().getGoodId());
            orderItemPO.setItemNum(cartItem.getNum());
            orderItemPO.setItemName(cartItem.getGood().getGoodName());
            orderItemPO.setItemPrice(cartItem.getGood().getPresentPrice());
            orderItemPOMapper.insert(orderItemPO);
        }

        result.setStatus(200);
        result.setMessage("订单添加成功");
        return result;
    }

    @Override
    public Result<OrderVO> getOrdersList(Integer userId) {
        Result<OrderVO> result = new Result<>();
        result.setStatus(500);
        result.setMessage("查询订单失败");

        QueryWrapper<OrderListPO> listWrapper = new QueryWrapper<>();
        listWrapper.eq("user_id", userId);
        List<OrderListPO> orderListPOS = orderListPOMapper.selectList(listWrapper);

        OrderVO orderVO = new OrderVO();
        orderVO.setOrderListPOS(orderListPOS);

        List<List<OrderItemPO>> list = new ArrayList<>();
        for (OrderListPO orderListPO : orderListPOS) {
            QueryWrapper<OrderItemPO> itemWrapper = new QueryWrapper<>();
            itemWrapper.eq("order_id", orderListPO.getOrderId());
            List<OrderItemPO> orderItemPOS = orderItemPOMapper.selectList(itemWrapper);
            list.add(orderItemPOS);
        }
        orderVO.setOrderItemPOS(list);
        result.setStatus(200);
        result.setDetail(orderVO);
        result.setMessage("查询订单成功");
        return result;
    }
}
