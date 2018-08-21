package service;

import pojo.Fwork;
import util.PageResponse;

public interface fworkService {
	public PageResponse getfworkInfo(int page, int limit,int id);
	public PageResponse getfworkInfo(int page, int limit);
	public void fworkADD(Fwork fwork);
	public void delfworkInfo(int id);
	public void updatefwork(Fwork fwork);
	public PageResponse getfworkInfoLike(int page, int limit,String id);
}
