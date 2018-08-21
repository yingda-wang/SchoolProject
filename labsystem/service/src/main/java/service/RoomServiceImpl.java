package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.CourseroomMapper;
import mapper.RoomMapper;
import pojo.Courseroom;
import pojo.Room;
import pojo.RoomExample;

@Service
public class RoomServiceImpl implements RoomService{
	@Autowired
	private RoomMapper roomMapper;
	@Autowired
	private CourseroomMapper courseroomMapper;
	@Override
	public List<Room> roomGet() {
		// TODO Auto-generated method stub
		RoomExample example=new RoomExample();
		return roomMapper.selectByExample(example);
	}
	@Override
	public List<Courseroom> getCourseroom(String roomcode) {
		// TODO Auto-generated method stub
		
		return courseroomMapper.selectByroom(roomcode);
	}
	
}
