package service;

import java.util.List;

import pojo.Information;
import user.UserInfo;

public interface UserService {
	List<UserInfo> selUser(UserInfo user);

}
