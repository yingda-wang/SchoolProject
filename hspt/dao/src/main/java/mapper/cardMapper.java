package mapper;

import java.util.List;

import pojo.card;
import pojo.cardname;

public interface cardMapper {
	public void card_ADD(card card);
	public List<card> card_SELECTALL();
	public List<card> card_photo_DOWNLOWD();
	public List<card> getcardInfo(int id);
	public List<card> getcardInfoSearch();
	public void delcardInfo(int id);
	public void updatecard(card card);
}
