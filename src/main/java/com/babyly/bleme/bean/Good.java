package com.babyly.bleme.bean;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@TableName("inshop_goods")
@Data
public class Good {
    private Integer shopId;
    private Integer categoryId;
    private String goodName;
    private String goodDesc;
    private Double originalPrice;
    private Double presentPrice;
    private Integer monthlySale;
    @TableId(value = "good_id", type = IdType.AUTO)
    private Integer goodId;
    private String goodImg;
}
