package service;

import pojo.Devicemaintenance;
import util.PageResponse;

public interface DeviceWbService {
	public void deviceWbAdd(Devicemaintenance devicemaintenance);
	public PageResponse getDeviceWbList(int page, int limit);
	public void deviceWbDel(long id);
	public PageResponse getDeviceListByBh(int page, int limit,String sbid); 

}	
