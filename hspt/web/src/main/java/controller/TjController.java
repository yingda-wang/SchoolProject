package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import jl.LbTj;
import service.TjService;

@Controller
public class TjController {
	
	@Autowired
	private TjService tjservice;
	
	@ResponseBody
	@RequestMapping("device/lbtj")
	public List<LbTj> getLbTj(){
		
		return tjservice.getLbTj();
	}
	
	@ResponseBody
	@RequestMapping("device/lbtj1")
	public List<LbTj> getLbTjByZid( String zid){
		//System.out.println(zid);
		//System.out.println(zid);
		return tjservice.getLbTjByZid(zid);
	}
	
	@ResponseBody
	@RequestMapping("device/wxtj")
	public List<LbTj> getWxTj(){
		
		return tjservice.getWxTj();
	}
	
	@ResponseBody
	@RequestMapping("device/wbtj")
	public List<LbTj> getWbTj(){
		
		return tjservice.getWbTj();
	}
	
	@ResponseBody
	@RequestMapping("device/wxtj1")
	public List<LbTj> getWxTjByZid(String zid){	
		return tjservice.getWxTjByZid(zid);
	}
	
	@ResponseBody
	@RequestMapping("device/wbtj2")
	public List<LbTj> getWbTjByZid(String zid){	
		return tjservice.getWbTjByZid(zid);
	}
	@ResponseBody
	@RequestMapping("device/wxtj3")
	public List<LbTj> getWxTjBySj(String sj){
		
		
		return tjservice.getWxTjBySj(sj);
	}
	@ResponseBody
	@RequestMapping("device/wbtj1")
	public List<LbTj> getWbTjBySj(String sj){	
		return tjservice.getWbTjBySj(sj);
	}
	@ResponseBody
	@RequestMapping("device/wxtj2")
	public List<LbTj> getWxTjBydc(String cs){
		System.out.println(cs);
		return tjservice.getWxTjByDc(cs);
	}
	@ResponseBody
	@RequestMapping("device/wbtj3")
	public List<LbTj> getWbTjBydc(String cs){	
		return tjservice.getWbTjByDc(cs);
	}
}
