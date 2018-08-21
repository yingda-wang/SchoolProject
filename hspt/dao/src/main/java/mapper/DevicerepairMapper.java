package mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import pojo.Devicerepair;
import pojo.DevicerepairExample;

public interface DevicerepairMapper {
    int countByExample(DevicerepairExample example);

    int deleteByExample(DevicerepairExample example);

    int deleteByPrimaryKey(Long id);

    int insert(Devicerepair record);

    int insertSelective(Devicerepair record);

    List<Devicerepair> selectByExample(DevicerepairExample example);

    Devicerepair selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") Devicerepair record, @Param("example") DevicerepairExample example);

    int updateByExample(@Param("record") Devicerepair record, @Param("example") DevicerepairExample example);

    int updateByPrimaryKeySelective(Devicerepair record);

    int updateByPrimaryKey(Devicerepair record);
}