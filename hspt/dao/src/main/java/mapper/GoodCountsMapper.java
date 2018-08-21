package mapper;

import java.util.List;

import goods.GoodCountSend;
import goods.GoodCounts;

public interface GoodCountsMapper { 
	public List<GoodCounts> getGoodsCount(GoodCountSend goodCountSend);
		
}
