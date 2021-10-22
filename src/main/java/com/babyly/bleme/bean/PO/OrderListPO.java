package com.babyly.bleme.bean.PO;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;

import java.time.LocalDateTime;

@TableName("order_list")
@Data
public class OrderListPO {
    @TableId(value = "order_id", type = IdType.ASSIGN_ID)
    private String orderId;
    private Integer userId;
    private Integer totalNum;
    private Double totalPrice;
    @TableField(value = "create_time", fill = FieldFill.INSERT)
    private LocalDateTime createTime;
}
