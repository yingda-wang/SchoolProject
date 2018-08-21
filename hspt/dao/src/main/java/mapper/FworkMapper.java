package mapper;

import java.util.List;

import pojo.Fwork;

public interface FworkMapper {
	public void fwork_ADD(Fwork fwork);
	public List<Fwork> fwork_SELECTALL();
	public List<Fwork> getfworkInfo(int id);
	public List<Fwork> getfworkInfoS();
	public void delfworkInfo(int id);
	public void updatefwork(Fwork fwork);
	public List<Fwork> getfworkInfoLike(String id);
}