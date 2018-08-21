package service;

import org.springframework.stereotype.Service;

import user.UserInfoDetail;
@Service
public interface UserInfoDetailService {
	public  UserInfoDetail getUserInfoDetail(int id);
}
