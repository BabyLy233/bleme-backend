package com.babyly.bleme.bean.VO;

import lombok.Data;

@Data
public class AddressVO {
    private String name;
    private String tel;
    private String province;
    private String city;
    private String county;
    private String addressDetail;
    private Boolean isDefault;
    private Integer addressId;
}
