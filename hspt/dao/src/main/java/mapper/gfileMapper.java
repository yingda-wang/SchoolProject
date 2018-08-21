package mapper;


import java.util.List;

import pojo.card;
import pojo.gfile;



public interface gfileMapper{
	public int gfile_ADD(gfile gfile);
	public List<gfile> gfile_SELECTALL();
	public List<gfile> gfileSee(int zId);
	public void gfileDel(long id);
	public List<gfile> getgfileInfo();
	public void delgfileInfo(int id);
	public void updategfile(gfile gfile);
}