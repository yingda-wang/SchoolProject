package mapper;

import java.util.List;

import user.UserInfoLike;
import user.ZPosition;
import user.ZPosition1;
import user.position;
import user.zu;


public interface ZPositionMapper {
  List<ZPosition1> getZPosition(); 
  void addZPosition(ZPosition1 zposition);
	public List <zu>  getZu();
	public zu  getZu1();
	public List <position>  getPosition();
	public List <ZPosition1>  getPosition1();
	public void addZu1(zu zu);
	public void del(int id);
	public void addPosition1(position position);
	public List<ZPosition1> getZPositionLike(String searchName);
	public void del1(int id);
	  
}
