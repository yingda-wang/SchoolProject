package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


import mapper.CourseroomMapper;
import mapper.RoomMapper;

import pojo.Courseroom;
import pojo.CourseroomExample;
import pojo.Room;
import pojo.RoomExample;
import pojo.RoomExample.Criteria;
import util.PageResponse;

@Service
public class LabServiceImpl implements LabService {
//实验室管理
	@Autowired
	RoomMapper roomMapper;

	@Override
	public void addLab(Room room) {
		roomMapper.insertSelective(room);
	}
	@Override
	public List<Room> RoomSelByRoomcode(int roomcode) {
		RoomExample example=new RoomExample();
		Criteria cri=example.createCriteria();
		cri.andRoomcodeEqualTo(roomcode+"");
		return roomMapper.selectByExample(example);
	
	}
	@Override
	public PageResponse selectLab(int page, int limit) {
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		List<Room> list = roomMapper.selectLab();
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Room> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	
	}

	@Override
	public PageResponse getRoomLike(int page, int limit, String searchName) {
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		List<Room> list = roomMapper.getRoomLike(searchName);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Room> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}

	@Override
	public void updateRoom(Room room) {
		roomMapper.updateRoom(room);
	}

	@Override
	public void delRoom(int id) {
		System.out.println(id);
		roomMapper.deleteByPrimaryKey(id);		
	}

	//实验室课程管理
	@Autowired
	CourseroomMapper courseroomMapper;
	
	
	@Override
	public void addLabCourse(Courseroom courseroom) {
		courseroomMapper.insertSelective(courseroom);
	}

	@Override
	public PageResponse selectLabCourse(int page, int limit) {
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		List<Courseroom> list = courseroomMapper.selectLabCourse();
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Courseroom> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}

	@Override
	public PageResponse getLabCourseLike(int page, int limit, String searchName) {
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		//List<Courseroom> list = courseroomMapper.getLabCourseLike(searchName);
		CourseroomExample example=new CourseroomExample();
		pojo.CourseroomExample.Criteria cri = example.createCriteria();
		cri.andCoursenameLike("%"+searchName+"%");
		List<Courseroom> list = courseroomMapper.selectByExample(example);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Courseroom> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}



	@Override
	public void delLabCourse(int id) {
		courseroomMapper.delLabCourse(id);
		
	}

	@Override
	public List<Room> getLab() {
		// TODO Auto-generated method stub
		return roomMapper.selectLab();
	}
	@Override
	public PageResponse selectLab(int page, int limit, String searchName) {
		PageResponse pageResponse=new PageResponse();
		//设置分页信息
		PageHelper.startPage(page, limit);
		RoomExample example=new RoomExample();
		Criteria cri = example.createCriteria();
		cri.andRoomcodeLike("%"+searchName+"%");
		List<Room> list = roomMapper.selectByExample(example);
		pageResponse.setData(list);
		//取分页结果
		PageInfo<Room> pageInfo = new PageInfo<>(list);
		//取总记录数
		long total = pageInfo.getTotal();
		pageResponse.setCount(total);
		return pageResponse;
	}

	


}
