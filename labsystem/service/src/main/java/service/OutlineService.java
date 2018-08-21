package service;

import java.util.List;

import pojo.Kcm;
import pojo.Outline1;
import util.PageResponse;

public interface OutlineService {
	List<Outline1>outlineJy(String version);
	void outlineAdd(Outline1 out);
	PageResponse getOutlineList(int page, int limit);
	void outlineDel(int id);
	void kcAdd(Outline1 out);
	List<Outline1> getPyfan();
	List<Kcm> getKcm(String version);
	void kcmDel(String version);
}
