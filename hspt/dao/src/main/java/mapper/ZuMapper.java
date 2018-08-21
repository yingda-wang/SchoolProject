package mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import pojo.Zu;
import pojo.ZuExample;

public interface ZuMapper {
    int countByExample(ZuExample example);

    int deleteByExample(ZuExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Zu record);

    int insertSelective(Zu record);

    List<Zu> selectByExample(ZuExample example);

    Zu selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Zu record, @Param("example") ZuExample example);

    int updateByExample(@Param("record") Zu record, @Param("example") ZuExample example);

    int updateByPrimaryKeySelective(Zu record);

    int updateByPrimaryKey(Zu record);
}