package com.babyly.bleme.bean.VO;

import com.babyly.bleme.bean.PO.OrderItemPO;
import com.babyly.bleme.bean.PO.OrderListPO;
import lombok.Data;

import java.util.List;

@Data
public class OrderVO {
    private List<OrderListPO> orderListPOS;
    private List<List<OrderItemPO>> orderItemPOS;
}
