package service;

import pojo.Gstudent;
import util.PageResponse;

public interface GstudentService {
	public void gstudentAdd(Gstudent gstudent);
	public PageResponse gstudentSearch(int page, int limit);
	public void delgstudent(int id);
	public PageResponse getgstudentLike(int page, int limit,String searchName);
}
