package mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import pojo.Deviceaccessoriesnotes;
import pojo.DeviceaccessoriesnotesExample;

public interface DeviceaccessoriesnotesMapper {
    int countByExample(DeviceaccessoriesnotesExample example);

    int deleteByExample(DeviceaccessoriesnotesExample example);

    int deleteByPrimaryKey(Long id);

    int insert(Deviceaccessoriesnotes record);

    int insertSelective(Deviceaccessoriesnotes record);

    List<Deviceaccessoriesnotes> selectByExample(DeviceaccessoriesnotesExample example);

    Deviceaccessoriesnotes selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") Deviceaccessoriesnotes record, @Param("example") DeviceaccessoriesnotesExample example);

    int updateByExample(@Param("record") Deviceaccessoriesnotes record, @Param("example") DeviceaccessoriesnotesExample example);

    int updateByPrimaryKeySelective(Deviceaccessoriesnotes record);

    int updateByPrimaryKey(Deviceaccessoriesnotes record);
}