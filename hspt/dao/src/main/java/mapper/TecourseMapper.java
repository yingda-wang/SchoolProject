package mapper;

import java.util.List;

import pojo.Tecourse;

public interface TecourseMapper {
	public void tecourse_ADD(Tecourse tecourse);
	public List<Tecourse> tecourse_SELECTALL();
	public List<Tecourse> gettecourseInfo();
	public void deltecourseInfo(int id);
	public void updatetecourse(Tecourse tecourse);
	public List<Tecourse> gettecourseInfoLike(String id);
}