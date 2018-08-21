package service;

import java.util.List;

import pojo.Device;
import pojo.Devicecat;
import util.PageResponse;

public interface DeviceCatService {
	public List<Devicecat>getDeviceCat();
	public PageResponse getList(int page, int limit);
	public List<Devicecat> selectByType(String type);
	public void addDeviceCat(Devicecat deviceCat);
	public void deviceCatDel(int id);
	public PageResponse getDeviceCatListByType(int page, int limit,String type); 

}
