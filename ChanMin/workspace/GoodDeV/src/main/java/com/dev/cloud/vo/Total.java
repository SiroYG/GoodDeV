package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Total {
	private int itemNum;
	private String memberId;
	private String itemType;
	private String  ideaDate;
	private String  itemName ;
	private int price ;
	private String  itemContent ;
	private String  itemRegDate;
	private String  itemImagename ;
	private String  saveItemImage ;
	private String  documentFilename ;
	private String  saveDocumentFilename ;
	private String  updateCount;
	private int HistoryNum ;
	
	private String comments ;
	private String itemVersion ;
	private String historyDate;
	
	
}
