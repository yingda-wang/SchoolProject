package service;

import org.springframework.web.multipart.MultipartFile;

import pojo.Parttime;
import util.ImageResponse;
import util.PageResponse;

public interface parttimeService {
	public ImageResponse upload(MultipartFile file);
	public PageResponse getparttimeInfo(int page, int limit,int id);
	public PageResponse getparttimeSearch(int page, int limit);
	public void parttimeADD(Parttime parttime);
	public void delparttimeInfo(int id);
	public void updateparttime(Parttime parttime);
	public PageResponse getparttimeInfoLike(int page, int limit,String id);
}