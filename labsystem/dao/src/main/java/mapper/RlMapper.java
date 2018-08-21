package mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import pojo.Rl;
import pojo.RlExample;

public interface RlMapper {
    int countByExample(RlExample example);

    int deleteByExample(RlExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Rl record);

    int insertSelective(Rl record);

    List<Rl> selectByExample(RlExample example);

    List<Rl> selectRl(String state);
    
    Rl selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Rl record, @Param("example") RlExample example);

    int updateByExample(@Param("record") Rl record, @Param("example") RlExample example);

    int updateByPrimaryKeySelective(Rl record);

    int updateByPrimaryKey(Rl record);
}