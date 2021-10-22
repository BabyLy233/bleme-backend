package com.babyly.bleme.bean;

import lombok.Data;

@Data
public class Result<T> {
    private Integer status;
    private String message;
    private T detail;

}
