package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.Device;
import pojo.Devicecat;
import service.DeviceCatService;
import util.PageResponse;
@Controller
public class DeviceCatController {
	@Autowired
	private DeviceCatService deviceCatService ;
	
	@ResponseBody
	@RequestMapping("/deviceCat/bd")
	public void deviceBd(Devicecat deviceCat) {
		deviceCatService.addDeviceCat(deviceCat);
	}
	
	@RequestMapping("/deviceCat/cid")
	@ResponseBody
	public List<Devicecat> showCid(){
		List<Devicecat> list=deviceCatService.getDeviceCat();
		return list;
	}
	@RequestMapping("/deviceCat/search")
	@ResponseBody
	public PageResponse getList(int page,int limit){
		return deviceCatService.getList(page, limit);
	}
	@ResponseBody
	@RequestMapping("/deviceCat/lbjy")
	public String deviceTypeJy(String type ) {
	
		List<Devicecat> list=deviceCatService.selectByType(type);
		if(list.size()>0){
			return "nak";
		}
		else{
			return "ack";
		}				
	}
	@RequestMapping("/deviceCat/del")
	public void deviceDel(int id){
		deviceCatService.deviceCatDel(id);
	}
	@ResponseBody
	@RequestMapping("/deviceCat/search/js")
	public PageResponse deviceSearch(int page, int limit,String type) {
		return deviceCatService.getDeviceCatListByType(page, limit, type);
	}
}
