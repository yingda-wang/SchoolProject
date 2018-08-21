package mapper;

import java.util.List;

import pojo.Testudent;

public interface TestudentMapper {
	public void testudent_ADD(Testudent testudent);
	public List<Testudent> testudent_SELECTALL();
	public List<Testudent> gettestudentInfo();
	public void deltestudentInfo(int id);
	public void updatetestudent(Testudent testudent);
	public List<Testudent> gettestudentInfoLike(String id);
}