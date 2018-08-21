package mapper;

import java.util.List;

import pojo.Wexperience;

public interface WexperienceMapper {
	public void wexperience_ADD(Wexperience wexperience);
	public List<Wexperience> wexperience_SELECTALL();
	public List<Wexperience> getwexperienceInfo();
	public List<Wexperience> getwexperienceInfoLike(String id);
	public void delwexperienceInfo(int id);
	public void updatewexperience(Wexperience wexperience);
}