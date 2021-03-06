package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ItemDo {
	private int itemNum;
	private String memberId;
	private String itemType;
	private String  ideaDate;
	private String  itemName ;
	private int price ;
	private String patentNum;
	private String  itemContent ;
	private String  itemRegDate;
	private String  itemImagename ;
	private String patentHolderName;
	private String  saveItemImage ;
	private String  updateCount;
	private int documentNum;
	private int patentsubNum;
	private String documentFilename;
	private String saveDocumentFilename;
	private int  pti_seq ;
	private String  contract ;
	private String  contractDate ;
	
}
