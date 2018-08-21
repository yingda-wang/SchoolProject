package service;

import org.springframework.web.multipart.MultipartFile;

import ksxs.Baseteach;
import util.ImageResponse;
import util.PageResponse;

public interface BaseteachService {
	public ImageResponse upload(MultipartFile file);
	public void baseteachAdd(Baseteach baseteach);
	public PageResponse baseteachSearch(int page, int limit);
	public void baseteachDown(String fileName);
	public void delbaseteach(int id);
	public PageResponse getbaseteachLike(int page, int limit,String searchName);
}
