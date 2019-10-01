package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FundingOption {
	
	private int fundingOptionNum;
	private int crowdfundingNum;
	private String optionType ;
	private int optionPrice ;
}
