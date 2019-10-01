package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Total { 	// item , document, item-history
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
	private int historyNum ;
	
	private String comments ;
	private int itemVersion ;
	private String historyDate;
	
	
}
