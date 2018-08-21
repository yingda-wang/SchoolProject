package service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import pojo.card;
import pojo.cardname;

import util.ImageResponse;
import util.PageResponse;

public interface cardService {
	public ImageResponse upload(MultipartFile file);
	public List<cardname> cardnameSel();	
	public void cardADD(card card);
	public PageResponse getcardInfo(int page, int limit,int id);
	public PageResponse getcardInfo(int page, int limit);
	public void delcardInfo(int id);
	public void updatecard(card card);
}