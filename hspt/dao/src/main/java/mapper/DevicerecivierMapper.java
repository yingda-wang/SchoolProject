package mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import pojo.Devicerecivier;
import pojo.DevicerecivierExample;

public interface DevicerecivierMapper {
    int countByExample(DevicerecivierExample example);

    int deleteByExample(DevicerecivierExample example);

    int deleteByPrimaryKey(Long id);

    int insert(Devicerecivier record);

    int insertSelective(Devicerecivier record);

    List<Devicerecivier> selectByExample(DevicerecivierExample example);

    Devicerecivier selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") Devicerecivier record, @Param("example") DevicerecivierExample example);

    int updateByExample(@Param("record") Devicerecivier record, @Param("example") DevicerecivierExample example);

    int updateByPrimaryKeySelective(Devicerecivier record);

    int updateByPrimaryKey(Devicerecivier record);
}