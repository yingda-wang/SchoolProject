package service;

import pojo.Deviceaccessories;
import util.PageResponse;

public interface DevicePjService {
	public void pjAdd(Deviceaccessories deviceaccessories);
	public PageResponse getDevicePjList(int page, int limit);
	public void devicePjDel(long id);
	public PageResponse getDeviceListByBh(int page, int limit,String sbid); 

}
