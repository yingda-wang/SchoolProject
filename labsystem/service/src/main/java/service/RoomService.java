package service;

import java.util.List;

import pojo.Courseroom;
import pojo.Room;

public interface RoomService {
	List<Room> roomGet();
	List<Courseroom> getCourseroom(String roomcode);
}
