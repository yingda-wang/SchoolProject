package mapper;

import java.util.List;

import ksxs.Expertguidance;
import pojo.Basic;
import pojo.gfile;

public interface ExpertguidanceMapper {
	public void expertguidanceAdd(Expertguidance expertguidance);
	public List<Expertguidance> expertguidanceSearch();
	public void updateexpertguidance(Expertguidance expertguidance);
	public void delexpertguidance(int id);
	public List<Expertguidance> getexpertguidanceLike(String searchName);
}
