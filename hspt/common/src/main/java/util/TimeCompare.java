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
		       //System.out.println(date_01.before(date_02)); //true���� date_01 С�� date_02 ʱ��Ϊ true������Ϊ false
		       //System.out.println(date_02.after(date_01)); //true���� date_02 ���� date_01 ʱ��Ϊ true������Ϊ false
		       //System.out.println(date_01.compareTo(date_02)); //-1���� date_01 С�� date_02 ʱ��Ϊ -1
		       //System.out.println(date_02.compareTo(date_01)); //1���� date_02 ���� date_01 ʱ��Ϊ 1
		       //System.out.println(date_02.compareTo(date_02)); //0���������������ʱ��Ϊ 0
		
		      a=  date_01.compareTo(date_02);
		} catch (ParseException e) {
		        e.printStackTrace();
		}
		return a;
	}
}
