package mapper;

import java.util.List;

import pojo.Basic;

public interface BasicMapper {
	public void basicAdd(Basic basic);
	public List<Basic> basicSearch();
	public void delbasic(String phone);
	public List<Basic> getbasicLike(String searchName);
}
