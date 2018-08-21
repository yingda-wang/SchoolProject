package mapper;

import java.util.List;

import ksxs.Baseteach;
import ksxs.Meeting;

public interface BaseteachMapper {
	public void baseteachAdd(Baseteach baseteach);
	public List<Baseteach> baseteachSearch();
	public void updatebaseteach(Baseteach baseteach);
	public void delbaseteach(int id);
	public List<Baseteach> getbaseteachLike(String searchName);
}
