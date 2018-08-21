package mapper;

import java.util.List;

import ksxs.Expertguidance;
import ksxs.Meeting;

public interface MeetingMapper {
	public void meetingAdd(Meeting meeting);
	public List<Meeting> meetingSearch();
	public void updatemeeting(Meeting meeting);
	public void delmeeting(int id);
	public List<Meeting> getmeetingLike(String searchName);
}
