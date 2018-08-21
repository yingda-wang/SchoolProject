package mapper;

import java.util.List;

import ksxs.Baseteach;
import ksxs.Meetingspoken;

public interface MeetingspokenMapper {
	public void meetingspokenAdd(Meetingspoken meetingspoken);
	public List<Meetingspoken> meetingspokenSearch();
	public void updatemeetingspoken(Meetingspoken meetingspoken);
	public void delmeetingspoken(int id);
	public List<Meetingspoken> getmeetingspokenLike(String searchName);
}
