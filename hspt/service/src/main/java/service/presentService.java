package service;
import java.util.List;
import org.springframework.stereotype.Service;
import pojo.Award;
import pojo.Eexperience;
import pojo.Fwork;
import pojo.Wexperience;
import pojo.gfile;
import pojo.Tec;
import util.PageResponse;
@Service
	public interface presentService  {
	
	public PageResponse selectTecourse(int page, int limit ,int id);
	public PageResponse selectGfile(int page, int limit ,int id);
	public PageResponse selectFwork(int page, int limit ,int id);
	public  PageResponse selectEexperience(int page, int limit ,int id);
	public PageResponse selectAward(int page, int limit ,int id);
	public PageResponse selectWexperience(int page, int limit ,int id);
}
