package com.babyly.bleme.controller;

import com.babyly.bleme.bean.Result;
import com.babyly.bleme.bean.VO.AddressVO;
import com.babyly.bleme.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/address")
public class AddressController {
    @Autowired
    private AddressService addressService;

    @PostMapping("/add")
    public Result<String> addAddress(@RequestBody AddressVO addressVO, @RequestParam("userId") Integer userId) {
        return addressService.addAddress(addressVO, userId);
    }

    @GetMapping("/get")
    public Result<List<AddressVO>> getAddress(@RequestParam("userId") Integer userId) {
        return addressService.getAddress(userId);
    }

    @PutMapping("/edit")
    public Result<String> editAddress(@RequestBody AddressVO addressVO, @RequestParam("addressId") Integer addressId) {
        return addressService.editAddress(addressVO, addressId);
    }

    @DeleteMapping("/del")
    public Result<String> delAddress(@RequestParam("addressId") Integer addressId) {
        return addressService.delAddress(addressId);
    }

}
