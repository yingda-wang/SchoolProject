package service;


import org.springframework.web.multipart.MultipartFile;

import pojo.Eexperience;
import util.ImageResponse;
import util.PageResponse;

public interface eexperienceService {
	public ImageResponse upload(MultipartFile file);
	public PageResponse geteexperienceInfo(int page, int limit);
	public void eexperienceADD(Eexperience eexperience);
	public void deleexperienceInfo(int id);
	public void updateeexperience(Eexperience eexperience);
	public PageResponse geteexperienceInfoLike(int page, int limit,String id);
}