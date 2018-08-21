package service;

import pojo.Istudent;
import util.PageResponse;

public interface IstudentService {
	public void istudentAdd(Istudent istudent);
	public PageResponse istudentSearch(int page, int limit);
	public void delistudent(int id);
	public PageResponse getistudentLike(int page, int limit,String searchName);
}
