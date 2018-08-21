package mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import pojo.Devicescrappedapplyregist;
import pojo.DevicescrappedapplyregistExample;

public interface DevicescrappedapplyregistMapper {
    int countByExample(DevicescrappedapplyregistExample example);

    int deleteByExample(DevicescrappedapplyregistExample example);

    int deleteByPrimaryKey(Long id);

    int insert(Devicescrappedapplyregist record);

    int insertSelective(Devicescrappedapplyregist record);

    List<Devicescrappedapplyregist> selectByExample(DevicescrappedapplyregistExample example);

    Devicescrappedapplyregist selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") Devicescrappedapplyregist record, @Param("example") DevicescrappedapplyregistExample example);

    int updateByExample(@Param("record") Devicescrappedapplyregist record, @Param("example") DevicescrappedapplyregistExample example);

    int updateByPrimaryKeySelective(Devicescrappedapplyregist record);

    int updateByPrimaryKey(Devicescrappedapplyregist record);
}