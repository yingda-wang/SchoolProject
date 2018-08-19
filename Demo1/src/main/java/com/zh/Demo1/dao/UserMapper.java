package com.zh.Demo1.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.zh.Demo1.pojo.User;
import com.zh.Demo1.pojo.UserInfo;

@Mapper
public interface UserMapper {

	@Select("SELECT * FROM teacher WHERE username=#{username} and password=#{password}")
	public UserInfo getUser(User user);
	@Update("")
	public UserInfo updataUser(UserInfo userInfo);
}
