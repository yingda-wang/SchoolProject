package mapper;

import java.util.List;

import pojo.Eexperience;

public interface EexperienceMapper {
	public void eexperience_ADD(Eexperience eexperience);
	public List<Eexperience> eexperience_SELECTALL();
	public List<Eexperience> eexperience_photo_DOWNLOWD();
	public List<Eexperience> geteexperienceInfo();
	public void deleexperienceInfo(int id);
	public void updateeexperience(Eexperience eexperience);
	public List<Eexperience> geteexperienceInfoLike(String id);
}
