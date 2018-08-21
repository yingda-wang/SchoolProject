package service;

import pojo.Devicerepair;
import util.PageResponse;

public interface DeviceRepairService {
	public void add(Devicerepair devicerepair);
	public PageResponse getDeviceRepairList(int page,int limit);
	public void deviceRepariDel(long id);
	public void deviceRepairStateUpdate(Devicerepair deviceRepair);
}
