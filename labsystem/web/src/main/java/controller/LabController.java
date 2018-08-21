package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.Authority;
import pojo.Courseroom;
import pojo.Room;
import service.AuthorityService;
import service.LabService;
import service.UserService;
import util.PageResponse;

@Controller
public class LabController {
	
	@Autowired
	LabService labService;

//实验室管理	
	@ResponseBody
	@RequestMapping("/lab/addLab")
	public void addLab(Room room){
		labService.addLab(room);
	}
	@ResponseBody
	@RequestMapping("lab/jy")
	public String authorityJy(int roomcode){
	
		if(labService.RoomSelByRoomcode(roomcode).size()>0){
			return "1";
		}
	return "0";
	}
	@ResponseBody
	@RequestMapping("/lab/selectLab")
	public PageResponse selectLab(int page, int limit){
		return labService.selectLab( page,  limit);
		
	}
	@ResponseBody
	@RequestMapping("/lab/searchRoom")
	public PageResponse selectLab(int page, int limit,String searchName){
		return labService.selectLab( page,  limit,searchName);
		
	}
	@ResponseBody
	@RequestMapping("/lab/updateRoom")
	public void updateRoom(Room room){
		System.out.println(room.getRs());
		 labService.updateRoom(room);	
	}
	@ResponseBody
	@RequestMapping("/lab/delRoom")
	public void delRoom(int id){
		 labService.delRoom(id);
	}
//课程实验室管理
	
	@ResponseBody
	@RequestMapping("/lab/addLabCourse")
	public void addLabCourse(Courseroom courseroom){
		labService.addLabCourse(courseroom);
	}
	
	@ResponseBody
	@RequestMapping("/lab/selectLabCourse")
	public PageResponse selectLabCourse(int page, int limit){
		return labService.selectLabCourse(page, limit);
		
	}
	@ResponseBody
	@RequestMapping("/lab/searchLabCourse")
	public PageResponse searchLabCourse(int page, int limit,String searchName){
		return labService.getLabCourseLike(page, limit, searchName);
		
	}

	@ResponseBody
	@RequestMapping("/lab/delLabCourse")
	public void delLabCourse(int id){
		 labService.delLabCourse(id);
	}
}
