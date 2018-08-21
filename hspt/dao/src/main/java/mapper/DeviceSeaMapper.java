package mapper;

import java.util.List;

import jl.DeviceSea;

public interface DeviceSeaMapper {
	List<DeviceSea> deviceSeaSel();
	List<DeviceSea> deviceSeaSelByState(String state);
	List<DeviceSea> deviceSeaSelById(String sbid);
}
