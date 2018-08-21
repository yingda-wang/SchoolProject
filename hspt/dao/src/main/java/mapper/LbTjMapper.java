package mapper;

import java.util.List;

import jl.LbTj;

public interface LbTjMapper {
	public List<LbTj> getLbTj();
	public List<LbTj> getWxTj();
	public List<LbTj> getWbTj();
	public List<LbTj> getWxTjByZid(String zid);
	public List<LbTj> getWbTjByZid(String zid);
	public List<LbTj> getWxTjBySj(String time1,String time2);
	public List<LbTj> getWbTjBySj(String time1,String time2);
	public List<LbTj> getWxTjByDc(String time1,String time2,String zid);
	public List<LbTj> getWbTjByDc(String time1,String time2,String zid);
	public List<LbTj> getLbTjByZid(String zid);
}
