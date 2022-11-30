package com.bjpowernode.service.impl;

import com.bjpowernode.mapper.AdminMapper;
import com.bjpowernode.pojo.Admin;
import com.bjpowernode.pojo.AdminExample;
import com.bjpowernode.service.AdminService;
import com.bjpowernode.utils.MD5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
/**
 * @Author yao
 * @Description
 * @Date 17:35 2022/10/28
 * @Param null
 * @Return 
**/
@Service
public class AdminServiceImpl implements AdminService {

    //在业务逻辑层中，一定会有数据访问层的对象
    @Autowired
    AdminMapper adminMapper;

    @Override
    public Admin login(String name, String pwd) {
        //根据传入的用户名到DB中查询相应的用户对象
        //如果有条件一定要创建AdminExample的对象，用来封装条件
        AdminExample adminExample=new AdminExample();
        /**
         * 如何添加条件
         * select * from admin where a_name='admin'
         */
        //添加用户名a_name条件
        adminExample.createCriteria().andANameEqualTo(name);
        List<Admin> adminList=adminMapper.selectByExample(adminExample);
        if (adminList.size()>0){
            Admin admin=adminList.get(0);//在用户名不重复的情况下
            //如果查到用户对象，再进行密码对比,注意密码是密文
            /**
             *分析：
             * admin.getApass==>c984aed014aec7623a54f0591da07a85fd4b762d
             * pwd==>000000
             *在进行密码对比时，要将pwd进行MD5加密，再与数据库中查到的对象的密码进行对比
             */
            String miPwd= MD5Util.getMD5(pwd);
            if (miPwd.equals(admin.getaPass())){
                System.out.println("登录成功");
                return admin;
            }else {
                System.out.println("登录失败");
            }
        }
        return null;
    }
}
