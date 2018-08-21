package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.Deviceapply;
import service.DeviceApplyService;
import util.PageResponse;

@Controller
public class DeviceApplayController {
	@Autowired
	private DeviceApplyService deviceApplyService;
	
	@ResponseBody
	@RequestMapping("/device/apply")
	public void deviceApplayAdd(Deviceapply deviceapply){	
		deviceapply.setIfyes("·ñ");
		deviceApplyService.deviceApplyAdd(deviceapply);
	}
	
	@ResponseBody
	@RequestMapping("/device/apply/search")
	public PageResponse deviceApplySearch(int page, int limit) {
		return deviceApplyService.getList(page, limit);
	}
	
	@ResponseBody
	@RequestMapping("/device/apply/del")
	public void deviceApplyDel(long id){
		deviceApplyService.deviceApplyDel(id);
	}
	
	@ResponseBody
	@RequestMapping("/device/apply/sp")
	public void deviceApplyUpdateById(long id){
		
		deviceApplyService.deviceApplyUpdateById(id);
	}
	
	@ResponseBody
	@RequestMapping("/deviceApply/edit")
		public void deviceApplyUpdateById(long id,double number){
		
		deviceApplyService.deviceApplyUpdateById(id,number);
	}
}
