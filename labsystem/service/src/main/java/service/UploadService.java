package service;

import org.springframework.web.multipart.MultipartFile;

import pojo.Notes;
import util.ImageResponse;

public interface UploadService {
	public ImageResponse upload(MultipartFile file);
	public String scheduleDownload(Notes notes);
	public String scheduleFzrDownload(String nf);
}
