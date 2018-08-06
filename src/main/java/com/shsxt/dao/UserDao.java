package com.shsxt.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

import com.shsxt.query.UserQuery;
import com.shsxt.vo.User;

/**
 * Created by lp on 2018/6/14.
 */
public interface UserDao {
    public User queryUserByUserId(Integer userId);

    public List<User> queryUsersByParams(UserQuery userQuery);

    public List<User> queryUsersByParams02(UserQuery userQuery);

	public User queryUserByLogin(@Param("userName")String userName, @Param("userPwd")String userPwd);
	
	@Insert("INSERT INTO user(id,user_name,user_pwd,sex,birthday,address,marriage,height,education,salary,phone,nick_name,introduce,remark1,remark2)  VALUES(#{id},#{userName},#{userPwd},#{sex},#{birthday},#{address},#{marriage},#{height},#{education},#{salary},#{phone},#{nickName},#{introduce},#{remark1},#{remark2})")
	public int saveUser(User user);
}
