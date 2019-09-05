package good.dev.support01.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Patentsub {

private int  PatentsubNum ;
private String	patentNum ;
private String	documentFilename ;
private String	saveDocumentFilename ;
private String	referenceFilename ;
private String	saveReferenceFilename ;
}
