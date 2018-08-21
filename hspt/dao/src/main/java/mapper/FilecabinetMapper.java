package mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import pojo.Filecabinet;
import pojo.FilecabinetExample;

public interface FilecabinetMapper {
    int countByExample(FilecabinetExample example);

    int deleteByExample(FilecabinetExample example);

    int deleteByPrimaryKey(Long id);

    int insert(Filecabinet record);

    int insertSelective(Filecabinet record);

    List<Filecabinet> selectByExample(FilecabinetExample example);

    Filecabinet selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") Filecabinet record, @Param("example") FilecabinetExample example);

    int updateByExample(@Param("record") Filecabinet record, @Param("example") FilecabinetExample example);

    int updateByPrimaryKeySelective(Filecabinet record);

    int updateByPrimaryKey(Filecabinet record);
}