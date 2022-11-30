package com.bjpowernode.service;

import com.bjpowernode.pojo.ProductType;

import java.util.List;

/**
 * @Author yao
 * @Description
 * @Date 14:06 2022/10/31
 * @Param null
 * @Return
**/
public interface ProductTypeService {
    //查询所有商品类别
    List<ProductType> getAll();

}
