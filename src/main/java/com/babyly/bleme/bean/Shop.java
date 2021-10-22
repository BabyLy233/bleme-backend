package com.babyly.bleme.bean;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@TableName("takeout_shop")
@Data
public class Shop {
    @TableId(value = "shop_id",type = IdType.AUTO)
    private Integer shopId;
    private String shopName;
    private Double shopPoint;
    private Integer monthlySale;
    private Integer shopCategory;
    private String shopDesc;
    private String shopIcon;
}
