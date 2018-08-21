package mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import pojo.Courseroom;
import pojo.CourseroomExample;
import pojo.Room;

public interface CourseroomMapper {
    int countByExample(CourseroomExample example);

    int deleteByExample(CourseroomExample example);

    int insert(Courseroom record);

    int insertSelective(Courseroom record);
    
    public List<Courseroom> selectLabCourse();
    
    public List<Courseroom> getLabCourseLike(String searchName);
    
    public void delLabCourse(int id);

    List<Courseroom> selectByExample(CourseroomExample example);

    int updateByExampleSelective(@Param("record") Courseroom record, @Param("example") CourseroomExample example);

    List<Courseroom> selectByroom(String roomcode);
    
    int updateByExample(@Param("record") Courseroom record, @Param("example") CourseroomExample example);
}