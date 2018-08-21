package service;


import java.util.List;

import pojo.Authority;
import pojo.Courseroom;
import pojo.Room;
import util.PageResponse;

public interface LabService {
	//ʵ���ҹ���
 public void addLab(Room room);
 public PageResponse selectLab(int page, int limit);
 public PageResponse selectLab(int page, int limit,String searchName);
 public List<Room> getLab();
 List<Room> RoomSelByRoomcode(int roomcode);
 public PageResponse getRoomLike(int page, int limit,String searchName);
 public void updateRoom(Room room);
 public void delRoom(int id);
//�γ�ʵ���ҹ���
 public void addLabCourse(Courseroom courseroom);
 public PageResponse selectLabCourse(int page, int limit);
 public PageResponse getLabCourseLike(int page, int limit,String searchName);
 public void delLabCourse(int id);
}
