package service;

import java.util.List;

import pojo.Rl;
import util.PageResponse;

public interface RlService {
	void rlAdd(Rl rl);
	List<Rl>rlJy(String xn,String xq);
	PageResponse getRlList(int page, int limit);
	List<Rl>selectRl(String state);
	void rlDel(int id);
	void rlyyUp(int id);
	void rlgx(String filename);
}
