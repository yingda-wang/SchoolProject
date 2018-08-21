package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.Deviceaccessories;
import service.DevicePjService;
import util.PageResponse;

@Controller
public class DevicePjController {
	@Autowired
	private DevicePjService devicePjService;
	
	
	@ResponseBody
	@RequestMapping("device/pj/add")
	public void devicePjAdd(Deviceaccessories deviceaccessories){
		devicePjService.pjAdd(deviceaccessories);
	}
	@ResponseBody
	@RequestMapping("/device/pj/search")
	public PageResponse deviceSearch(int page, int limit) {
		return devicePjService.getDevicePjList(page, limit);
	}
	@RequestMapping("/device/pj/del")
	public void deviceDel(long id){
		devicePjService.devicePjDel(id);
	}
	@ResponseBody
	@RequestMapping("/device/pj/search/js1")
	public PageResponse deviceSearch1(int page, int limit,String bh) {
		return devicePjService.getDeviceListByBh(page, limit, bh);
	}
	
	
}
