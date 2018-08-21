package service;

import pojo.Rdoctor;
import util.PageResponse;

public interface RdoctorService {
	public void rdoctorAdd(Rdoctor rdoctor);
	public PageResponse rdoctorSearch(int page, int limit);
	public void delrdoctor(String phone);
	public PageResponse getrdoctorLike(int page, int limit,String searchName);
}
