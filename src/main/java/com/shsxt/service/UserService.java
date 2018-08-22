package com.shsxt.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.shsxt.dao.UserDao;
import com.shsxt.exceptions.ParamException;
import com.shsxt.query.UserQuery;
import com.shsxt.vo.User;

/**
 * Created by lp on 2018/6/14.
 */
@Service
public class UserService {
    @Resource
    private UserDao userDao;

    public  User queryUserByUserId(String loverId){
        return userDao.queryUserByUserId(loverId);
    }
    
    public User queryUserByLogin(String userName,String userPwd) {
    	return userDao.queryUserByLogin(userName,userPwd);
    }

    public List<User> queryUsersByParams(UserQuery userQuery){
        PageHelper.startPage(userQuery.getPageNum(),userQuery.getPageSize());
        return userDao.queryUsersByParams02(userQuery);
    }
    public PageInfo<User> queryUsersByParams02(UserQuery userQuery){
        PageHelper.startPage(userQuery.getPageNum(),userQuery.getPageSize());
        PageInfo<User> pageInfo=new PageInfo<User>(userDao.queryUsersByParams02(userQuery));
        return pageInfo;
    }

    public void saveUser(User user){
    	userDao.saveUser(user);
    }
    public User selectUserByUserName(String userName) {
    	return userDao.selectUserByUserName(userName);
    }
    public  void test(){
        throw  new ParamException("异常测试...");
    }
}
