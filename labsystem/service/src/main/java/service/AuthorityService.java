package service;

import java.util.List;

import pojo.Authority;
import util.PageResponse;

public interface AuthorityService {
	void authorityAdd(Authority authority);
	List<Authority> authoritySelByJobNumber(String jobNumber);
	PageResponse authoritySearch(int page, int limit);
	void authorityDel(int id);
	void authorityQx(Authority authority);
	void authorityUpdate(Authority authority);
}
