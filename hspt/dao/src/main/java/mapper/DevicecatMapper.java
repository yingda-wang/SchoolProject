package mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import pojo.Devicecat;
import pojo.DevicecatExample;

public interface DevicecatMapper {
    int countByExample(DevicecatExample example);

    int deleteByExample(DevicecatExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Devicecat record);

    int insertSelective(Devicecat record);

    List<Devicecat> selectByExample(DevicecatExample example);

    Devicecat selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Devicecat record, @Param("example") DevicecatExample example);

    int updateByExample(@Param("record") Devicecat record, @Param("example") DevicecatExample example);

    int updateByPrimaryKeySelective(Devicecat record);

    int updateByPrimaryKey(Devicecat record);
}