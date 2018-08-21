package mapper;

import java.util.List;

import ksxs.Attendancerecords;
import ksxs.Baseteach;

public interface AttendancerecordsMapper {
	public void attendancerecordsAdd(Attendancerecords attendancerecords);
	public List<Attendancerecords> attendancerecordsSearch();
	public void updateattendancerecords(Attendancerecords attendancerecords);
	public void delattendancerecords(int id);
	public List<Attendancerecords> getattendancerecordsLike(String searchName);
}
