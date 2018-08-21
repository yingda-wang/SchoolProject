package mapper;

import java.util.List;

import pojo.Parttime;

public interface ParttimeMapper {
	public void parttime_ADD(Parttime parttime);
	public List<Parttime> Parttime_SELECTALL();
	public List<Parttime> Parttime_photo_DOWNLOWD();
	public List<Parttime> getparttimeInfo(int id);
	public List<Parttime> getparttimeSearch();
	public void delparttimeInfo(int id);
	public void updateparttime(Parttime parttime);
	public List<Parttime> getparttimeInfoLike(String id);
}
