package service;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import jl.deviceAndCat;
import pojo.Device;
import util.ImageResponse;
import util.PageResponse;

public interface DeviceService {
	public ImageResponse upload(MultipartFile file);
	public void addDevice(Device device);
	public PageResponse getDeviceList(int page, int limit);
	public void deviceDel(long id);
	public List<Device> selectBysbid(String sbid);
	public PageResponse getDeviceListBySbid(int page, int limit,String sbid); 
	public PageResponse getDeviceListByState(int page, int limit,String state);
	public void deviceEdit(Device device);	 
	public void deviceStateUpdate(Device device,String sbid);
	public List<Device> getBhList();
	public List<Device> getBhListNoBf();
	public void sbQr(String bh);
}
