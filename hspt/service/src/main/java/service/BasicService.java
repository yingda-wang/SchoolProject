package service;

import pojo.Basic;
import util.PageResponse;

public interface BasicService {
	public void basicAdd(Basic basic);
	public PageResponse basicSearch(int page, int limit);
	public void delbasic(String phone);
	public PageResponse getbasicLike(int page, int limit,String searchName);
}
