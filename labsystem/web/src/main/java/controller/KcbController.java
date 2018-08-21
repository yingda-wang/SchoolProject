package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.Kcb;
import service.KcbService;

@Controller
public class KcbController {
	@Autowired
	private KcbService kcbService;
	
	@ResponseBody
	@RequestMapping("kcb/search")
	public List<Kcb> kcbSearch(){
		return kcbService.kcbSearch();
	}
}
