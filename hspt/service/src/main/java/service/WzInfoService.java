package service;

import java.util.List;

import mapper.JobTrainListMapper;
import pojo.Wznotes;
import wz.WzInfo;
import wz.WzType;
import job.JobTrain;
import job.JobTrainInfoLike;
import user.UserInfo;
import user.ZPosition;
import util.PageResponse;

public interface WzInfoService {
	public List<WzType> getType();
	public void setWzApply(WzInfo wzInfo);
	public PageResponse getWzApply(int page, int limit);
	public List<WzInfo> getPosition(int dId);
	public void updateWzInfo(WzInfo wzInfo);
	public void delWzInfo(int id);
	public void updateIfYes(String ifYes,int id);
	public void setIfYes(int id);
	public void wzApplyUpdateById(int id);
	public void wzNotesAdd(int id,String name,int number,int dId);
	public PageResponse getWzNotes(int page, int limit);
	public PageResponse getWzApplyList(int page, int limit,int searchName);
	public PageResponse getWzInfoLike(int page, int limit,String searchName); 
	public List<Wznotes> getWzNotes();
	public void addWz (WzType wztype);
	public void addWzType (String type);
	public PageResponse getWzType (int page, int limit);
	public PageResponse getWzTypeLike(int page, int limit,String searchName);
	public void upDateWzInfo(WzType Wztype);
	 public List<WzType> getWz (int tId);
	 public List<WzType> getWzTypeType ();
}
