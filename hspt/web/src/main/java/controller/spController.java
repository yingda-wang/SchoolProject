package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import pojo.Sp;
import service.SpService;
import util.ImageResponse;

@Controller
public class spController {
	@Autowired
	private SpService spServicel;
	@ResponseBody
	@RequestMapping("sp/upload")
	public ImageResponse upload(MultipartFile file){ 
		ImageResponse imageResponse=spServicel.upload(file);
		return imageResponse;
	}
	
	@ResponseBody
	@RequestMapping("sp/add")
	public void spAdd(Sp sp){
		spServicel.spAdd(sp);
	}
	
}
