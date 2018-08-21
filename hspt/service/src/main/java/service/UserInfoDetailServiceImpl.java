package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.UserInfoDetailMapper;
import user.UserInfoDetail;
@Service
public class UserInfoDetailServiceImpl implements UserInfoDetailService {
@Autowired
UserInfoDetailMapper userinfomapper;
	@Override
	public UserInfoDetail getUserInfoDetail(int id) {
		// TODO Auto-generated method stub
		return userinfomapper.getUserInfoDetail(id);
	}

}
