package mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import pojo.Assetstransferstatistics;
import pojo.AssetstransferstatisticsExample;

public interface AssetstransferstatisticsMapper {
    int countByExample(AssetstransferstatisticsExample example);

    int deleteByExample(AssetstransferstatisticsExample example);

    int deleteByPrimaryKey(Long id);

    int insert(Assetstransferstatistics record);

    int insertSelective(Assetstransferstatistics record);

    List<Assetstransferstatistics> selectByExample(AssetstransferstatisticsExample example);

    Assetstransferstatistics selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") Assetstransferstatistics record, @Param("example") AssetstransferstatisticsExample example);

    int updateByExample(@Param("record") Assetstransferstatistics record, @Param("example") AssetstransferstatisticsExample example);

    int updateByPrimaryKeySelective(Assetstransferstatistics record);

    int updateByPrimaryKey(Assetstransferstatistics record);
}