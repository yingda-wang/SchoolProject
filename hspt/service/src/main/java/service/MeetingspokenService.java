package service;

import org.springframework.web.multipart.MultipartFile;

import ksxs.Meetingspoken;
import util.ImageResponse;
import util.PageResponse;

public interface MeetingspokenService {
	public ImageResponse upload(MultipartFile file);
	public void meetingspokenAdd(Meetingspoken meetingspoken);
	public PageResponse meetingspokenSearch(int page, int limit);
	public void meetingspokenDown(String fileName);
	public void delmeetingspoken(int id);
	public PageResponse getmeetingspokenLike(int page, int limit,String searchName);
}
