package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.Notes;
import pojo.Xsb1;
import service.NotesService;
import service.StuService;
import util.ChineseInital;
import util.Color;
import util.Color2;
import util.JsonUtils;
import util.PageResponse;


@Controller
public class NotesController {
	@Autowired
	private NotesService notesService;
	@Autowired
	private StuService stuService;
	
	@ResponseBody
	@RequestMapping("notes/search")
	public Color notesSearch(String room,String kcm){
		Color color=new Color();
		color.setList(notesService.notesSearch(room,kcm));
		
		String str=String.valueOf(Math.abs(kcm.hashCode()));
		String s=str.substring(0, 6);
		color.setColor(s);
		ChineseInital pinyin=new ChineseInital();
		String name=pinyin.getFirstLetter(kcm);
		color.setName(name.toUpperCase());
		return color;
	}
	@ResponseBody
	@RequestMapping("notes/search2")
	public Color2 notesSearch(String room){
		Color2 color=new Color2();
		List<Notes> list=notesService.notesSearch(room);
		color.setList(list);
		String temp[]=new String[list.size()];
		String temp2[]=new String[list.size()];
		ChineseInital pinyin=new ChineseInital();
		
		for(int i=0;i<list.size();i++){
			String kcm=list.get(i).getKcm();
			String str=String.valueOf(Math.abs(kcm.hashCode()));
			String s=str.substring(0, 6);
			temp[i]=s;
			temp2[i]=pinyin.getFirstLetter(kcm).toUpperCase();			
		}		
		color.setColor(temp);
		color.setName(temp2);
		return color;
	}
	@ResponseBody
	@RequestMapping("notes/search1")
	public PageResponse notesSearch(int page,int limit,String jobnumber,String kcbh){
		return notesService.notesSearch(page, limit, jobnumber, kcbh);
	}
	@ResponseBody
	@RequestMapping("notes/search3")
	public PageResponse notesSearch(int page,int limit,String room,String str,String id){
		return notesService.notesSearch3(page, limit, room, str,id);
	}
	@ResponseBody
	@RequestMapping("notes/del")
	public void notesDel(long id,String xuehao,String kcbh,String jobnumber){
		stuService.updateState(xuehao, kcbh,jobnumber);
		notesService.notesDel(id);
	}
	@ResponseBody
	@RequestMapping("notes/delAll")
	public void notesDelAll(String list,String room,String str,String id){
		List<Notes> temp=JsonUtils.jsonToList(list, Notes.class);
		for(Notes notes:temp){
			long s=notes.getId1();
			String xuehao=notes.getXuehao();
			String kcbh=notes.getKcbh();
			String jobnumber=notes.getUsername();
			notesDel(s,xuehao,kcbh,jobnumber);
		}
		//stuService.updateState1(list);
		//notesService.notesDelAll(room,str,id);
	}
	@ResponseBody
	@RequestMapping("notes/add")
	public void notesAdd(String list,String teacher,String str,String id,String room){
		//System.out.println(list.size());e
		List<Xsb1> temp=JsonUtils.jsonToList(list,Xsb1.class);
		stuService.updateState(temp);
		notesService.notesAdd(temp,teacher,str,id,room);
	}
}
