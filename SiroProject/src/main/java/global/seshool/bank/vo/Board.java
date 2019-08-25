package global.seshool.bank.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Board {
 int boardno;
 String custid;
 String title;
 String content;
 String regdate;
 String originalfile;
 String savedfile;
 int hitcount;
 String replytext;
 String replydate;
 String notify;
	
}
