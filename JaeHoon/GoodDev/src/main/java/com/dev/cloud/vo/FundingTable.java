package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FundingTable{

	private int fundingReplyNum ;
	private String fundingReply;
	private String memberId ;
	private String fundingReplydate ;
	private int crowdfundingNum ;
}
