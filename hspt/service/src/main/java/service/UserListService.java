package service;

import java.util.List;

import pojo.Information;
import user.Nation;
import user.Party;
import user.Technical;
import user.UserInfo;
import user.UserQx;
import user.ZPosition;
import util.PageResponse;

public interface UserListService {
	public List<Nation>getNation();
	public List<Party>getParty();
	public List<Technical>getTechnical();
	public void setUserInfo(UserInfo userInfo);
	public PageResponse getUserInfo(int page, int limit);
	public PageResponse getUserInfoLike(int page, int limit,String searchName);
	public List<ZPosition> getZu();
	public List<ZPosition> getPosition(int zId);
	public void delUserInfo(int id);
	public void updateQx(String qx,int id);
	public void updateUserInfo(UserInfo userInfo);
	public UserInfo getPersonInfo(int id);
	public void updatePersonInfo(UserInfo userInfo);
}
