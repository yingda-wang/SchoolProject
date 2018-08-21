package mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import pojo.Deviceaccessories;
import pojo.DeviceaccessoriesExample;

public interface DeviceaccessoriesMapper {
    int countByExample(DeviceaccessoriesExample example);

    int deleteByExample(DeviceaccessoriesExample example);

    int deleteByPrimaryKey(Long id);

    int insert(Deviceaccessories record);

    int insertSelective(Deviceaccessories record);

    List<Deviceaccessories> selectByExample(DeviceaccessoriesExample example);

    Deviceaccessories selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") Deviceaccessories record, @Param("example") DeviceaccessoriesExample example);

    int updateByExample(@Param("record") Deviceaccessories record, @Param("example") DeviceaccessoriesExample example);

    int updateByPrimaryKeySelective(Deviceaccessories record);

    int updateByPrimaryKey(Deviceaccessories record);
}