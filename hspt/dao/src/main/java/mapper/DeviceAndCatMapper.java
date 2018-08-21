package mapper;

import java.util.List;

import jl.deviceAndCat;
import pojo.Deviceapply;

public interface DeviceAndCatMapper {
	public List<deviceAndCat> getList();
	public List<deviceAndCat> getListBySbid(String sbid);
	public List<deviceAndCat> getListLikeState(String state);

}
