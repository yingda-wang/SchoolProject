package mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import pojo.Notes;
import pojo.NotesExample;

public interface NotesMapper {
    int countByExample(NotesExample example);

    int deleteByExample(NotesExample example);

    int deleteByPrimaryKey(Long id1);

    int insert(Notes record);

    int insertSelective(Notes record);

    List<Notes> selectByExample(NotesExample example);

    Notes selectByPrimaryKey(Long id1);

    int updateByExampleSelective(@Param("record") Notes record, @Param("example") NotesExample example);

    int updateByExample(@Param("record") Notes record, @Param("example") NotesExample example);

    int updateByPrimaryKeySelective(Notes record);

    int updateByPrimaryKey(Notes record);
    
    List<Notes> selectNotes(Notes notes);
    List<Notes> selectNotes1(Notes notes);
    List<Notes> selectNotes2(Notes notes);
}