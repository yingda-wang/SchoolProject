package service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import goods.GoodCountSend;
import goods.GoodCounts;
import mapper.GoodCountsMapper;



@Service
public class GoodCountServiceImpl implements GoodCountService{
	@Autowired
	private GoodCountsMapper GoodCountsMapper;

	@Override
	public List<GoodCounts> goodCount(GoodCountSend goodCountSend) {

		String [] time = goodCountSend.getDate().split(" - ");
		goodCountSend.setStartTime(time[0].trim());
		goodCountSend.setStopTime(time[1].trim());
	
		return GoodCountsMapper.getGoodsCount(goodCountSend);
		//return null;
	}


	
	
	
}
