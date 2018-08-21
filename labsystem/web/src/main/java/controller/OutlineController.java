package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.Kcm;
import pojo.Outline1;
import service.OutlineService;
import util.PageResponse;

@Controller
public class OutlineController {
	@Autowired
	private OutlineService outServiec;
	@ResponseBody
	@RequestMapping("outline/jy")
	public String rlJy(String version){
		if(outServiec.outlineJy(version).size()>0){
			return "1";
		}
		return "0";
	}
	@ResponseBody
	@RequestMapping("outline/add")
	public void rlJy(Outline1 out){
		outServiec.outlineAdd(out);
		outServiec.kcAdd(out);
	}
	@ResponseBody
	@RequestMapping("outline/search")
	public PageResponse getRlList(int page,int limit){
		return outServiec.getOutlineList(page, limit);
	}
	@ResponseBody
	@RequestMapping("outline/del")
	public void outlineDel(int id,String version){
		outServiec.outlineDel(id);
		outServiec.kcmDel(version);
	}
	@ResponseBody
	@RequestMapping("get/pyfa")
	public List<Outline1> getPyfa(){
		return outServiec.getPyfan();
	}
	@ResponseBody
	@RequestMapping("get/kcm")
	public List<Kcm> getKcm(String version){
		return outServiec.getKcm(version);
	}
}
