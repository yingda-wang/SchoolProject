package service;


import pojo.Award;
import util.PageResponse;

public interface awardService {
	public PageResponse getawardInfo(int page, int limit,int id);
	public PageResponse getawardInfo(int page, int limit);
	public void awardADD(Award award);
	public void delawardInfo(int id);
	public void updateaward(Award award);
	public PageResponse getawardInfoLike(int page, int limit,String id);

}
