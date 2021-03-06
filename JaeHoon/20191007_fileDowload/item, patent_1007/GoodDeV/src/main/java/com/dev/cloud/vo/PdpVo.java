package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PdpVo { // patent , devmember, Pti 섞음
	
	//item
	private int itemNum;
	private String  itemImagename ;
	private String  saveItemImage ;
	//Patent
	private String patentNum ;
	private String patentName ;
	private String patentHolderName ;
	private String patenttype ;
	//PTI
	private int  PTI_seq ;
	private String  contract ;
	private String  contractDate ;
	//devMember
	public String memberId;
	public String memberName;
	public String memberGo;
	//patentSub
	private int patentsubNum;
	
	//Document
	private int DocumentNum;
	private String documentFilename;
	private String saveDocumentFilename;
}
