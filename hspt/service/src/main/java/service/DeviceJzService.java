package service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import pojo.Devicecalibration;
import util.ImageResponse;
import util.PageResponse;

public interface DeviceJzService {
	public List<Devicecalibration>getJzList(String bh);
	public ImageResponse upload(MultipartFile file);
	public void deviceJzAdd(Devicecalibration devicecalibration);
	public PageResponse getDeviceJzList(int page, int limit);
	public void deviceJzDel(long id);
	public PageResponse getDeviceListByBh(int page, int limit,String sbid); 
}
