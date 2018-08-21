package service;

import org.springframework.web.multipart.MultipartFile;

import pojo.Sp;
import util.ImageResponse;

public interface SpService {
	public ImageResponse upload(MultipartFile file);
	public void spAdd(Sp sp);
}
