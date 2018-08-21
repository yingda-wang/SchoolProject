package mapper;

import java.util.List;

import pojo.Award;
import pojo.Eexperience;
import pojo.Fwork;
import pojo.Wexperience;
import pojo.gfile;
import pojo.Tec;

public interface presentMapper {
public List<Tec> selectTecourse(int id);
public List<gfile> selectGfile(int id);
public List<Fwork> selectFwork(int id);
public List <Eexperience> selectEexperience(int id);
public List <Award> selectAward(int id);
public List<Wexperience> selectWexperience(int id);
}
