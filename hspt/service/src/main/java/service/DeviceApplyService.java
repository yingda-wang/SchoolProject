package service;

import pojo.Deviceapply;
import util.PageResponse;

public interface DeviceApplyService {
	void deviceApplyAdd(Deviceapply deviceapply);
	PageResponse getList(int page, int limit);
	void deviceApplyDel(long id);
	void deviceApplyUpdateById(long id);
	void deviceApplyUpdateById(long id,double number);
}
