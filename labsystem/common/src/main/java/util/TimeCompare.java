package util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeCompare {
	public static int timeCompare(String dateString_01,String dateString_02){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		int a=-10;
		try {
		       Date date_01 = sdf.parse(dateString_01);
		       Date date_02 = sdf.parse(dateString_02);
		       //System.out.println(date_01.before(date_02)); //true，当 date_01 小于 date_02 时，为 true，否则为 false
		       //System.out.println(date_02.after(date_01)); //true，当 date_02 大于 date_01 时，为 true，否则为 false
		       //System.out.println(date_01.compareTo(date_02)); //-1，当 date_01 小于 date_02 时，为 -1
		       //System.out.println(date_02.compareTo(date_01)); //1，当 date_02 大于 date_01 时，为 1
		       //System.out.println(date_02.compareTo(date_02)); //0，当两个日期相等时，为 0
		
		      a=  date_01.compareTo(date_02);
		} catch (ParseException e) {
		        e.printStackTrace();
		}
		return a;
	}
}
