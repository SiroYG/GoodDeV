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
	private int  pti_seq ;
	private String  contract ;
	private String  contractDate ;
	//devMember
	public String memberId;
	public String memberName;
	
	//patentSub
	private int patentsubNum;
	private String	referenceFilename ;
	private String	saveReferenceFilename ;
}
