package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.InformationMapper;
import mapper.UserListMapper;
import pojo.Information;
import pojo.InformationExample;
import pojo.InformationExample.Criteria;
import user.UserInfo;
@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserListMapper userListMapper;
	@Override
	public List<UserInfo> selUser(UserInfo role) {
		// TODO Auto-generated method stub
		InformationExample example=new InformationExample();
		Criteria cri=example.createCriteria();
		cri.andIdEqualTo(role.getId());
		//System.out.println(role.getPassword());
		cri.andPasswordEqualTo(role.getPassword());
		
		return userListMapper.getSessionUserInfo(role.getId());
	}

}
