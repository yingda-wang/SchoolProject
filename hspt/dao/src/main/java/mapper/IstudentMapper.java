package mapper;

import java.util.List;

import pojo.Istudent;

public interface IstudentMapper {
	public void istudentAdd(Istudent istudent);
	public List<Istudent> istudentSearch();
	public void delistudent(int id);
	public List<Istudent> getistudentLike(String searchName);
}
