package mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import pojo.Wznotes;
import pojo.WznotesExample;

public interface WznotesMapper {
    int countByExample(WznotesExample example);

    int deleteByExample(WznotesExample example);

    int deleteByPrimaryKey(Long id);

    int insert(Wznotes record);

    int insertSelective(Wznotes record);

    List<Wznotes> selectByExample(WznotesExample example);

    Wznotes selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") Wznotes record, @Param("example") WznotesExample example);

    int updateByExample(@Param("record") Wznotes record, @Param("example") WznotesExample example);

    int updateByPrimaryKeySelective(Wznotes record);

    int updateByPrimaryKey(Wznotes record);
}