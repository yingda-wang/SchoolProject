package service;


import pojo.Wexperience;
import util.PageResponse;

public interface wexperienceService {
	public PageResponse getwexperienceInfo(int page, int limit);
	public void wexperienceADD(Wexperience wexperience);
	public void delwexperienceInfo(int id);
	public void updatewexperience(Wexperience wexperience);
	public PageResponse getwexperienceInfoLike(int page, int limit,String id);
}
