package mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import pojo.Devicemaintenance;
import pojo.DevicemaintenanceExample;

public interface DevicemaintenanceMapper {
    int countByExample(DevicemaintenanceExample example);

    int deleteByExample(DevicemaintenanceExample example);

    int deleteByPrimaryKey(Long id);

    int insert(Devicemaintenance record);

    int insertSelective(Devicemaintenance record);

    List<Devicemaintenance> selectByExample(DevicemaintenanceExample example);

    Devicemaintenance selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") Devicemaintenance record, @Param("example") DevicemaintenanceExample example);

    int updateByExample(@Param("record") Devicemaintenance record, @Param("example") DevicemaintenanceExample example);

    int updateByPrimaryKeySelective(Devicemaintenance record);

    int updateByPrimaryKey(Devicemaintenance record);
}