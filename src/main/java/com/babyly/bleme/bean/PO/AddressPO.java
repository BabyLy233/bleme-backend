package com.babyly.bleme.bean.PO;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@TableName("address")
@Data
public class AddressPO {
    private Integer userId;
    @TableField("receiver_name")
    private String name;
    private String phone;
    private String province;
    private String city;
    private String county;
    private String addressDetail;
    private Boolean isDefault;
    @TableId(value = "address_id", type = IdType.AUTO)
    private Integer addressId;
}
