package service;

import org.springframework.web.multipart.MultipartFile;

import ksxs.Attendancerecords;
import util.ImageResponse;
import util.PageResponse;

public interface AttendancerecordsService {
	public ImageResponse upload(MultipartFile file);
	public void attendancerecordsAdd(Attendancerecords attendancerecords);
	public PageResponse attendancerecordsSearch(int page, int limit);
	public void attendancerecordsDown(String fileName);
	public void delattendancerecords(int id);
	public PageResponse getattendancerecordsLike(int page, int limit,String searchName);
}
