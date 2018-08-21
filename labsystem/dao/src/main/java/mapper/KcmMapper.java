package mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import pojo.Kcm;
import pojo.KcmExample;

public interface KcmMapper {
    int countByExample(KcmExample example);

    int deleteByExample(KcmExample example);

    int insert(Kcm record);

    int insertSelective(Kcm record);

    List<Kcm> selectByExample(KcmExample example);

    public  List<Kcm> selectKcm();
    
    int updateByExampleSelective(@Param("record") Kcm record, @Param("example") KcmExample example);

    int updateByExample(@Param("record") Kcm record, @Param("example") KcmExample example);
}