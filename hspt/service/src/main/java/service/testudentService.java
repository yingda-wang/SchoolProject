package service;


import pojo.Testudent;
import util.PageResponse;

public interface testudentService {
	public PageResponse gettestudentInfo(int page, int limit);
	public void testudentADD(Testudent testudent);
	public void deltestudentInfo(int id);
	public void updatetestudent(Testudent testudent);
	public PageResponse gettestudentInfoLike(int page, int limit,String id);
}
