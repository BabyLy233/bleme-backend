package com.babyly.bleme.bean;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@TableName("inshop_category")
@Data
public class InShopCategory {
    private Integer shopId;
    private String categoryName;
    @TableId(value = "category_id",type = IdType.AUTO)
    private Integer categoryId;
}
