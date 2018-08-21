package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import jl.Cs;
import pojo.Device;
import pojo.Devicescrappedapplyregist;
import service.DeviceSbService;
import service.DeviceService;
import util.PageResponse;

@Controller
public class DeviceSbController {
	
	
	@Autowired
	private DeviceService devSe;
	@Autowired
	private DeviceSbService dev;
	
	@ResponseBody
	@RequestMapping("device/cs/search")
	public List<Device> getCsByBh(String bh){		
		return devSe.selectBysbid(bh);
	}
	
	@ResponseBody
	@RequestMapping("device/sb/add")
	public void deviceSbAdd(Devicescrappedapplyregist devicescrappedapplyregist){
		dev.sbInsert(devicescrappedapplyregist);
	}
	
	 @ResponseBody
	 @RequestMapping("device/sb/search")
	 public PageResponse getSb(int page, int limit){
		 return dev.getSb(page,limit);
	 }
	 
	 @ResponseBody
	 @RequestMapping("device/sb/del")
	 public void sbDel(long id){
		 dev.SbDel(id);
	 }
	 
	@ResponseBody
	@RequestMapping("device/cfjy/{bh}")
	public String cfjy(@PathVariable String bh){
		
		//System.out.println(bh);
		
		return dev.cfjy(bh);
	}
}
