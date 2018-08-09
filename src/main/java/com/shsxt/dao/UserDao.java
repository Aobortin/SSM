package com.shsxt.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

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
	
	@Insert("INSERT INTO user("
			+ "id,"
			+ "user_name,"
			+ "user_pwd,"
			+ "sex,"
			+ "birthday,"
			+ "address,"
			+ "marriage,"
			+ "height,"
			+ "education,"
			+ "salary,"
			+ "phone,"
			+ "nick_name,"
			+ "introduce,"
			+ "remark1,"
			+ "remark2)  "
			+ "VALUES("
			+ "#{id},"
			+ "#{userName},"
			+ "#{userPwd},"
			+ "#{sex},"
			+ "#{birthday},"
			+ "#{address},"
			+ "#{marriage},"
			+ "#{height},"
			+ "#{education},"
			+ "#{salary},"
			+ "#{phone},"
			+ "#{nickName},"
			+ "#{introduce},"
			+ "#{remark1},"
			+ "#{remark2});")
	public int saveUser(User user);
	
	@Select("select "
			+ "id as id,"
			+ "user_name as userName,"
			+ "user_pwd as userPwd,"
			+ "sex as sex,"
			+ "birthday as birthday,"
			+ "address as address,"
			+ "marriage as marriage,"
			+ "height as height,"
			+ "education as education,"
			+ "salary as salary,"
			+ "phone as phone,"
			+ "nick_name as nickName,"
			+ "introduce as introduce,"
			+ "remark1 as remark1,"
			+ "remark2 as remark2"
			+ " from user where user_name=#{userName}")
	public User selectUserByUserName(String userName);
}
