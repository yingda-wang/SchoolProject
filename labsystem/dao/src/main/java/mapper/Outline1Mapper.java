package mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import pojo.Outline1;
import pojo.Outline1Example;

public interface Outline1Mapper {
    int countByExample(Outline1Example example);

    int deleteByExample(Outline1Example example);

    int deleteByPrimaryKey(Integer id);

    int insert(Outline1 record);

    int insertSelective(Outline1 record);

    List<Outline1> selectByExample(Outline1Example example);

    Outline1 selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Outline1 record, @Param("example") Outline1Example example);

    int updateByExample(@Param("record") Outline1 record, @Param("example") Outline1Example example);

    int updateByPrimaryKeySelective(Outline1 record);

    int updateByPrimaryKey(Outline1 record);
}