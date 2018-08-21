package service;

import java.util.List;

import pojo.Authority;

public interface UserService {
	public  List<Authority> selectUser(Authority authority);
	public void addUser(Authority authority);
	public List<Authority> seeUser(String jobNumber);
}
