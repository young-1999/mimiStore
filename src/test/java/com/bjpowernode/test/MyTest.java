package com.bjpowernode.test;

import com.bjpowernode.mapper.ProductInfoMapper;
import com.bjpowernode.pojo.ProductInfo;
import com.bjpowernode.pojo.vo.ProductInfoVo;
import com.bjpowernode.utils.MD5Util;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext_dao.xml","classpath:applicationContext_service.xml"})
public class MyTest {
    @Autowired
    ProductInfoMapper mapper;

    @Test
    public void testMD5() {
        String mi = MD5Util.getMD5("123");
        String pwd = "c984aed014aec7623a54f0591da07a85fd4b762d";
        System.out.println(mi);
        if (mi.equals(pwd)) {
            System.out.println("相同");
        }else {
            System.out.println("不同");
        }
    }

    @Test
    public void testSelectCondition(){
        ProductInfoVo vo=new ProductInfoVo();
        vo.setpName("4");
        vo.setTypeId(3);
        vo.setLprice(3000.0);
        vo.setHprice(8000.0);
        List<ProductInfo> list = mapper.selectCondition(vo);
        list.forEach(info-> System.out.println(info));

        }
    }

