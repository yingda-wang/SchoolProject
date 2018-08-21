package controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import pojo.Device;
import pojo.Zu;
import service.DeviceService;
import service.ZuService;
import util.ImageResponse;
import util.PageResponse;

@Controller
public class DeviceController {
	
	@Autowired
	private ZuService zuService;
	@Autowired
	private DeviceService deviceService;
	@ResponseBody
	@RequestMapping("/device/upload")
	public ImageResponse upload(MultipartFile file){ 
		ImageResponse imageResponse=deviceService.upload(file);
		return imageResponse;
	}
	@ResponseBody
	@RequestMapping("/device/bd")
	public void deviceBd(Device device) {
		deviceService.addDevice(device);
	}
	@ResponseBody
	@RequestMapping("/device/search")
	public PageResponse deviceSearch(int page, int limit) {
		return deviceService.getDeviceList(page, limit);
	}
	@ResponseBody
	@RequestMapping("/device/search/js")
	public PageResponse deviceSearch(int page, int limit,String bh) {
		return deviceService.getDeviceListBySbid(page, limit, bh);
	}
	@ResponseBody
	@RequestMapping("/device/search/js1")
	public PageResponse deviceSearch1(int page, int limit,String state) {
		return deviceService.getDeviceListByState(page, limit, state);
	}
	@RequestMapping("/device/del")
	public void deviceDel(long id){
		deviceService.deviceDel(id);
	}
	
	@ResponseBody
	@RequestMapping("/device/bhjy/{sbid}")
	public String deviceCodeJy(@PathVariable String sbid ) {
		System.out.println(sbid);
		List<Device> list=deviceService.selectBysbid(sbid);
		if(list.size()>0){
			return "nak";
		}
		else{
			return "ack";
		}
				
	}
	
	@ResponseBody
	@RequestMapping("/device/edit")
	public void deviceEdit(Device device) {
		deviceService.deviceEdit(device);
	}
	
	@ResponseBody
	@RequestMapping("/device/bh/search")
	public List<Device> getBhList() {
		return deviceService.getBhListNoBf();
	}
	
	 @ResponseBody
	 @RequestMapping("device/sb/qr")
	 public void sbQr(String bh){
		 deviceService.sbQr(bh);
	 }
	 
	 @ResponseBody
	 @RequestMapping("device/zid")
	 public List<Zu> getZu(){
		 return zuService.getZu();
	 }
}
