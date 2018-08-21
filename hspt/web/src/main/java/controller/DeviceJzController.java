package controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import pojo.Devicecalibration;
import pojo.Devicemaintenance;
import service.DeviceJzService;
import util.ImageResponse;
import util.PageResponse;
import util.TimeCompare;

@Controller
public class DeviceJzController {
	
	@Autowired
	private DeviceJzService deviceJzService;
	
	@ResponseBody
	@RequestMapping("device/sfjz")
	public String getIfJz(String time1){
		Date date=new Date();
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
	
	@ResponseBody
	@RequestMapping("device/jz/add")
	public void deviceJzAdd(Devicecalibration devicecalibration){
		//System.out.println(devicecalibration);
		/*Date date=new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		 System.out.println(dateFormat.format(date));  */
		String[] a=devicecalibration.getTime2().split("-");
		String b=Integer.parseInt(a[0])+1+"";
		String c=b+"-"+a[1]+"-"+a[2];
		devicecalibration.setTime1(c);		
		deviceJzService.deviceJzAdd(devicecalibration);
	}
	@ResponseBody
	@RequestMapping("/device/Jz/upload")
	public ImageResponse upload(MultipartFile file){ 
		ImageResponse imageResponse=deviceJzService.upload(file);
		return imageResponse;
	}
	@ResponseBody
	@RequestMapping("/device/Jz/search")
	public PageResponse deviceSearch(int page, int limit) {
		return deviceJzService.getDeviceJzList(page, limit);
	}
	@RequestMapping("/device/Jz/del")
	public void deviceDel(long id){
		deviceJzService.deviceJzDel(id);
	}
	@ResponseBody
	@RequestMapping("/device/Jz/search/js1")
	public PageResponse deviceSearch1(int page, int limit,String bh) {
		return deviceJzService.getDeviceListByBh(page, limit, bh);
	}
}
