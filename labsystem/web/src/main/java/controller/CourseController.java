package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import pojo.Kcm;
import pojo.Room;
import service.CourseService;
import service.LabService;

@Controller
public class CourseController {
	
	@Autowired
	CourseService courseService;
	@Autowired
	LabService labService;
	
	
	@ResponseBody
	@RequestMapping("/addLabCourse")
	public ModelAndView getCourse(){
		ModelAndView mav = new ModelAndView();
		List<Kcm>course =  courseService.getCourse();
		List<Room>room =labService.getLab();
		mav.addObject("course", course);
		mav.addObject("room", room);
		mav.setViewName("addLabCourse");
		return mav;
	}
	
}
