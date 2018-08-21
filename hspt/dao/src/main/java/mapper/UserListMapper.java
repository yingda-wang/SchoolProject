package mapper;

import java.util.List;

import user.Nation;
import user.Party;
import user.Technical;
import user.UserInfo;
import user.UserInfoLike;
import user.UserQx;
import user.ZPosition;

public interface UserListMapper {
	public List<Nation> getNation();
	public List<Party> getParty();
	public List<Technical> getTechnical();
	public void setUserInfo(UserInfo useInfo);
	public List<UserInfo> getUserInfo();
	public List<UserInfo> getSessionUserInfo(int id);
	public UserInfo getPersonInfo(int id);
	public List<UserInfoLike> getUserInfoLike(String searchName);
	public List<ZPosition> getZu();
	public List<ZPosition> getPosition(int zId);
	public void delUserInfo(int id);
	public void updateQx(UserQx userQx);
	public void updateUserInfo(UserInfo userInfo);
	public void updatePersonInfo(UserInfo userInfo);
	
}
