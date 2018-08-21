package mapper;

import java.util.List;

import pojo.Basic;
import pojo.Rdoctor;

public interface RdoctorMapper {
	public void rdoctorAdd(Rdoctor rdoctor);
	public List<Rdoctor> rdoctorSearch();
	public void delrdoctor(String phone);
	public List<Rdoctor> getrdoctorLike(String searchName);
}
