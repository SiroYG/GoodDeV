package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Item {
	private int itemNum;
	private String  ideaDate;
	private String  itemName ;
	private int price ;
	private String  contract ;
	private String  itemContent ;
	private String  itemOption ;
	private String  itemRegDate;
	private String  itemImagename ;
	private String  saveItemImage ;
	private double avgValuable ;
	private double avgCommerciality ;
	private double avgProductivity;
	
}
