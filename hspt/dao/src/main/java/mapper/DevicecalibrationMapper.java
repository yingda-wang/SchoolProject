package mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import pojo.Devicecalibration;
import pojo.DevicecalibrationExample;

public interface DevicecalibrationMapper {
    int countByExample(DevicecalibrationExample example);

    int deleteByExample(DevicecalibrationExample example);

    int deleteByPrimaryKey(Long id);

    int insert(Devicecalibration record);

    int insertSelective(Devicecalibration record);

    List<Devicecalibration> selectByExample(DevicecalibrationExample example);

    Devicecalibration selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") Devicecalibration record, @Param("example") DevicecalibrationExample example);

    int updateByExample(@Param("record") Devicecalibration record, @Param("example") DevicecalibrationExample example);

    int updateByPrimaryKeySelective(Devicecalibration record);

    int updateByPrimaryKey(Devicecalibration record);
}