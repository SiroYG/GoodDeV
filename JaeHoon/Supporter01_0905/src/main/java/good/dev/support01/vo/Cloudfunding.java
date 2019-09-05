package good.dev.support01.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Cloudfunding{

	private int CouldfundingNum ;
	private int itemNum;
	private int itemGoalPrice ;
	private int itemCurrecyPrice ;
	private String fundingDueDate ;
}
