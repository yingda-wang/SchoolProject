package service;

import org.springframework.web.multipart.MultipartFile;

import ksxs.Expertguidance;
import pojo.gfile;
import util.ImageResponse;
import util.PageResponse;

public interface ExpertguidanceService {
	public ImageResponse upload(MultipartFile file);
	public void expertguidanceAdd(Expertguidance expertguidance);
	public PageResponse expertguidanceSearch(int page, int limit);
	public void gfileDown(String fileName);
	public void delexpertguidance(int id);
	public PageResponse getexpertguidanceLike(int page, int limit,String searchName);
}
