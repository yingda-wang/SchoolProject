package com.zh.Demo1.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zh.Demo1.dao.UserMapper;
import com.zh.Demo1.pojo.User;
import com.zh.Demo1.pojo.UserInfo;

@Service
public class UserService {

	@Autowired
	UserMapper userMapper;
	
	public UserInfo UserLogin(User user) {
		UserInfo userInfo = userMapper.getUser(user);
		if(userInfo==null) {
			return null;
		}
		return userInfo;
	}
	
	public String UserUpdata(UserInfo userInfo) {
		userMapper.updataUser(userInfo);
		return null;
		
	}
}
