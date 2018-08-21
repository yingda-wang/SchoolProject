package mapper;

import java.util.List;

import pojo.Award;

public interface AwardMapper {
	public void award_ADD(Award award);
	public List<Award> award_SELECTALL();
	public List<Award> getawardInfo(int id);
	public List<Award> getawardInfoS();
	public List<Award> getawardInfoLike(String id);
	public void delawardInfo(int id);
	public void updateaward(Award award);
}