package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pojo.Device;
import pojo.Devicerepair;
import service.DeviceRepairService;
import service.DeviceService;
import util.PageResponse;

@Controller
public class DeviceRepairController {
	@Autowired
	private DeviceRepairService devicerepairService;
	@Autowired
	private DeviceService deviceService;
	@RequestMapping("/device/repair")
	public void deviceRepairAdd(Devicerepair deviceRepair) {
		devicerepairService.add(deviceRepair);
		Device device=new Device();
		device.setState("维修");
		deviceService.deviceStateUpdate(device, deviceRepair.getAssetcoding());
	}
	@ResponseBody
	@RequestMapping("/device/repair/search")
	public PageResponse getdeviceRepairList(int page,int limit){
		return devicerepairService.getDeviceRepairList(page, limit);
	}
	
	@RequestMapping("/device/repair/del")
	public void deviceRepairDel(long id,String assetcoding){
		devicerepairService.deviceRepariDel(id);
		Device device=new Device();
		device.setState("完好");
		deviceService.deviceStateUpdate(device,assetcoding);
	}
	@ResponseBody
	@RequestMapping("/device/repair/fhbd")
	public void deviceRepairFhbd(Devicerepair deviceRepair){
		devicerepairService.deviceRepairStateUpdate(deviceRepair);		
		Device device=new Device();
		device.setState("完好");
		deviceService.deviceStateUpdate(device,deviceRepair.getAssetcoding());
	}
}
