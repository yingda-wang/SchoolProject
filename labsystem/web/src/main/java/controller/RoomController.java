package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.Courseroom;
import pojo.Room;
import service.RoomService;

@Controller
public class RoomController {
	@Autowired
	private RoomService roomService;
	@ResponseBody
	@RequestMapping("room/get")
	public List<Room> roomGet(){
		return roomService.roomGet();
	}
	@ResponseBody
	@RequestMapping("get/coursename")
	public List<Courseroom> courseroomGet(String roomcode){
		return roomService.getCourseroom(roomcode);
	}
}
