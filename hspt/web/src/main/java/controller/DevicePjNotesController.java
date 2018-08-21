package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.Deviceaccessoriesnotes;
import service.DevicePjNotesService;
import util.PageResponse;

@Controller
public class DevicePjNotesController {
	@Autowired
	private DevicePjNotesService devicePjNotesService;
	
	@ResponseBody
	@RequestMapping("device/pjly/add")
	public void devicePjAdd(Deviceaccessoriesnotes deviceaccessoriesnotes){
		devicePjNotesService.devicePjNotesAdd(deviceaccessoriesnotes);
	}
	@ResponseBody
	@RequestMapping("/device/pj/notes/search")
	public PageResponse getPjNotes(int page, int limit){
		return devicePjNotesService.getDevicepjNotesList(page, limit);
	}
	@ResponseBody
	@RequestMapping("/device/pjnotes/search/js1")
	public PageResponse deviceSearch1(int page, int limit,long bh) {
		return devicePjNotesService.getDeviceListByBh(page, limit, bh);
	}
	@RequestMapping("/device/pjnotes/del")
	public void deviceDel(long id){
		devicePjNotesService.devicepjnotesDel(id);
	}
	
	@ResponseBody
	@RequestMapping("/device/pj/sfly")
	public String sfly(long id){
		
		return devicePjNotesService.ifly(id);
	}
}
