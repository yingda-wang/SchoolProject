package controller;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.Rl;
import service.RlService;
import util.PageResponse;

@Controller
public class RlController {
	@Autowired
	private RlService rlService;
	@ResponseBody
	@RequestMapping("rl/add")
	public void rlAdd(Rl rl){
		rl.setState("Î´Ó¦ÓÃ");
		rlService.rlAdd(rl);
	}
	@ResponseBody
	@RequestMapping("rl/jy")
	public String rlJy(String xn, String xq){
		if(rlService.rlJy(xn, xq).size()>0){
			return "1";
		}
		return "0";
	}
	@ResponseBody
	@RequestMapping("rl/search")
	public PageResponse getRlList(int page,int limit){
		return rlService.getRlList(page, limit);
	}
	@ResponseBody
	@RequestMapping("rl/del")
	public void rlDel(int id){
		rlService.rlDel(id);
	}
	@ResponseBody
	@RequestMapping("rl/yy")
	public void rlyy(int id,String filename){
		rlService.rlyyUp(id);
		rlService.rlgx(filename);
	}
}
