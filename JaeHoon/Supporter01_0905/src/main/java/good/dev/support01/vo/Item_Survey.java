package good.dev.support01.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Item_Survey {
	
	private int surveyNum ;
	private int itemNum;
	private String id ;
	private int valuable;
	private int commerciality ;
	private int productivity ;
	private String etc ;
	private String item_survey_date ;
}
