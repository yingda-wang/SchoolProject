package mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import pojo.Kcb;
import pojo.KcbExample;

public interface KcbMapper {
    int countByExample(KcbExample example);

    int deleteByExample(KcbExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Kcb record);

    int insertSelective(Kcb record);

    List<Kcb> selectByExample(KcbExample example);

    Kcb selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Kcb record, @Param("example") KcbExample example);

    int updateByExample(@Param("record") Kcb record, @Param("example") KcbExample example);

    int updateByPrimaryKeySelective(Kcb record);

    int updateByPrimaryKey(Kcb record);
}