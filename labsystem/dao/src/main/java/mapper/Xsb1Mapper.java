package mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import pojo.Xsb1;
import pojo.Xsb1Example;

public interface Xsb1Mapper {
    int countByExample(Xsb1Example example);

    int deleteByExample(Xsb1Example example);

    int deleteByPrimaryKey(Long id);

    int insert(Xsb1 record);

    int insertSelective(Xsb1 record);

    List<Xsb1> selectByExample(Xsb1Example example);

    Xsb1 selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") Xsb1 record, @Param("example") Xsb1Example example);

    int updateByExample(@Param("record") Xsb1 record, @Param("example") Xsb1Example example);

    int updateByPrimaryKeySelective(Xsb1 record);

    int updateByPrimaryKey(Xsb1 record);
}