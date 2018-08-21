package service;


import pojo.Tecourse;
import util.PageResponse;

public interface tecourseService {
	public PageResponse gettecourseInfo(int page, int limit);
	public void tecourseADD(Tecourse tecourse);
	public void deltecourseInfo(int id);
	public void updatetecourse(Tecourse tecourse);
	public PageResponse gettecourseInfoLike(int page, int limit,String id);
}
