package mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import pojo.Devicerepairnotes;
import pojo.DevicerepairnotesExample;

public interface DevicerepairnotesMapper {
    int countByExample(DevicerepairnotesExample example);

    int deleteByExample(DevicerepairnotesExample example);

    int deleteByPrimaryKey(Long id);

    int insert(Devicerepairnotes record);

    int insertSelective(Devicerepairnotes record);

    List<Devicerepairnotes> selectByExample(DevicerepairnotesExample example);

    Devicerepairnotes selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") Devicerepairnotes record, @Param("example") DevicerepairnotesExample example);

    int updateByExample(@Param("record") Devicerepairnotes record, @Param("example") DevicerepairnotesExample example);

    int updateByPrimaryKeySelective(Devicerepairnotes record);

    int updateByPrimaryKey(Devicerepairnotes record);
}