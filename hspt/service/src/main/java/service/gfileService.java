package service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;


import pojo.gfile;
import pojo.gname;
import pojo.Zu;
import util.ImageResponse;
import util.PageResponse;

public interface gfileService {
	public ImageResponse upload(MultipartFile file);
	public List<gname> gnameSel();	
	public List<Zu> zuSel();
	public void gfileADD(gfile gfile);
	public PageResponse getgfileInfo(int page, int limit);
	public PageResponse gfileSee(int page, int limit,int zId);
	public void delgfileInfo(int id);
	public void updategfile(gfile gfile);
	public void gfileDown(String fileName);
}
