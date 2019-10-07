package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FundingTable{

	private int fundingReplyNum ;
	private int crowdfundingNum ;
	private String memberId ;
	private int investment;
	private String fundingReply;
	private String fundingReplydate ;
	
}
