package mapper;

import java.util.List;

import pojo.Basic;
import pojo.Gstudent;

public interface GstudentMapper {
	public void gstudentAdd(Gstudent gstudent);
	public List<Gstudent> gstudentSearch();
	public void delgstudent(int id);
	public List<Gstudent> getgstudentLike(String searchName);
}
