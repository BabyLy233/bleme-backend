package com.babyly.bleme.bean.PO;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@TableName("order_items")
@Data
public class OrderItemPO {
    private String orderId;
    private Integer itemId;
    private Integer itemNum;
    @TableId(value = "listItem_id", type = IdType.AUTO)
    private Integer listItemId;
    private Double itemPrice;
    private String itemName;
}
