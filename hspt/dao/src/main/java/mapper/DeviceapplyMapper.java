package mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import pojo.Deviceapply;
import pojo.DeviceapplyExample;

public interface DeviceapplyMapper {
    int countByExample(DeviceapplyExample example);

    int deleteByExample(DeviceapplyExample example);

    int deleteByPrimaryKey(Long id);

    int insert(Deviceapply record);

    int insertSelective(Deviceapply record);

    List<Deviceapply> selectByExample(DeviceapplyExample example);

    Deviceapply selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") Deviceapply record, @Param("example") DeviceapplyExample example);

    int updateByExample(@Param("record") Deviceapply record, @Param("example") DeviceapplyExample example);

    int updateByPrimaryKeySelective(Deviceapply record);

    int updateByPrimaryKey(Deviceapply record);
}