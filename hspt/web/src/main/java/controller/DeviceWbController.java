package controller;

import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.Devicemaintenance;
import service.DeviceWbService;
import util.PageResponse;
import util.TimeCompare;

@Controller
public class DeviceWbController {
	
	@Autowired
	private DeviceWbService deviceWbService;
	
	@ResponseBody
	@RequestMapping("/device/wb/add")
	public void deviceWbAdd(Devicemaintenance devicemaintenance){
		String[] a=devicemaintenance.getTime1().toString().split("-");
		String b=Integer.parseInt(a[0])+devicemaintenance.getTime3()+"";
		String c=b+"-"+a[1]+"-"+a[2];
		 SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");  
	     java.util.Date d = null;  
	     try {  
	            d = format.parse(c);  
	        } catch (Exception e) {  
	            e.printStackTrace();  
	        }  
	     java.sql.Date date = new java.sql.Date(d.getTime());
	     devicemaintenance.setTime2(date);
	     System.out.println(devicemaintenance);
	     deviceWbService.deviceWbAdd(devicemaintenance);
	}
	@ResponseBody
	@RequestMapping("/device/Wb/search")
	public PageResponse deviceSearch(int page, int limit) {
		return deviceWbService.getDeviceWbList(page, limit);
	}
	
	@RequestMapping("/device/Wb/del")
	public void deviceDel(long id){
		deviceWbService.deviceWbDel(id);
	}
	@ResponseBody
	@RequestMapping("/device/Wb/search/js1")
	public PageResponse deviceSearch1(int page, int limit,String bh) {
		return deviceWbService.getDeviceListByBh(page, limit, bh);
	}
	
	@ResponseBody
	@RequestMapping("device/sfwb")
	public String getIfWb(String time1){
		java.util.Date date=new java.util.Date();
		DateFormat format=new SimpleDateFormat("yyyy-MM-dd");
		String time2=format.format(date);
		time2=time2+" "+"11:11:11";
		if(time1==""){
			return "yes";
		}else{
			time1=time1+" "+"11:11:11";
			int a=TimeCompare.timeCompare(time1, time2);
			if(a==-1){
			return "yes";
			}
			if(a==0){
				return "yes";
			}
		}
		
		return "no";
	}
}
