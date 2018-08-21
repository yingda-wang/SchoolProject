package service;

import java.util.List;

import goods.GoodCountSend;
import goods.GoodCounts;

public interface GoodCountService {
 public List<GoodCounts> goodCount(GoodCountSend goodCountSend);
}
