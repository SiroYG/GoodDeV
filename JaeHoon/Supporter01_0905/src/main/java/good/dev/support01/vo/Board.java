package good.dev.support01.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Board {

private int boardNum ;
private String 	id ;
private String 	title;
private String 	content;
private String 	qType ;
private String 	qCategory ;
private String 	originalFilename;
private String 	saveFilename ;
private String 	boardDate ;
}
