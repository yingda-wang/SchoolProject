package mapper;

import java.util.List;

import jl.deviceAndCat;
import wz.WzInfo;
import wz.WzType;
import wz.WzIfYes;
import wz.WzApply;
import job.JobTrain;
import job.JobTrainInfoLike;
import pojo.Deviceapply;
import user.UserInfo;
import user.UserQx;
import user.ZPosition;

public interface WzInfoMapper {
	public List<WzType> getType();
	public void setWzApply(WzInfo wzInfo);
	public List<WzInfo> getWzApplyInfo();
	public List<WzInfo> getPosition(int dId);
	public void updateWzApplyInfo(WzInfo wzInfo);
	public void delWzApplyInfo(int id);
	public void updateIfYes(WzIfYes wzIfYes);
	public void setIfYes(int id);
	public int updateByPrimaryKeySelective(WzApply record);
	public void setWzNotes(WzApply wzApply);
	
	public List<WzApply> getWzNotesInfo();
	public List<WzApply> getList(int searchName);
	public List<WzApply> getWzInfoLike(String searchName);
    public void addWz (WzType wztype);
    public void addWzType (String type);
    public List<WzType> getWzType ();
    public List<WzType> getWzTypeType ();
    public List<WzType> getWzTypeLike(String searchName);
    public void upDateWzInfo(WzType Wztype);
    public List<WzType> getWz (int tId);
}
