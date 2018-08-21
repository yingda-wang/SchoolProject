package service;

import org.springframework.web.multipart.MultipartFile;

import ksxs.Meeting;
import util.ImageResponse;
import util.PageResponse;

public interface MeetingService {
	public ImageResponse upload(MultipartFile file);
	public void meetingAdd(Meeting meeting);
	public PageResponse meetingSearch(int page, int limit);
	public void meetingDown(String fileName);
	public void delmeeting(int id);
	public PageResponse getmeetingLike(int page, int limit,String searchName);
}
