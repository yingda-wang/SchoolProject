package service;

import java.util.List;

import user.ZPosition;
import user.ZPosition1;
import user.position;
import util.PageResponse;
import user.zu;
public interface ZPositionService {
	public void addZPosition(ZPosition1 zposition);
	public PageResponse getZPosition(int page, int limit);
	//ÐÂÔö
	public List <zu>  getZu();
	public zu  getZu1();
	public List <position>  getPosition();
	public List<ZPosition1> getPosition1(int zId);
	public void addZu1(zu zu);
	public void del(int id);
	public void addPosition1(position position);
	public PageResponse getZPositionLike(int page, int limit,String searchName);
	public List<ZPosition1> getPosition2();
	public PageResponse getZu1(int page, int limit);
	public void del1(int id);
	
}
