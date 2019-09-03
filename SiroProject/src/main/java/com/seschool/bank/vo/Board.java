package com.seschool.bank.vo;

import lombok.Data;

@Data
public class Board {
    private int boardno;//게시판 글번호
    private String custid;//고객id(fk)
    private String title;//글 제목
    private String content;//질의 내용
    private String regdate;//작성 날짜, 시간
    private String originalfile;//사용자가 첨부한 파일명
    private String savedfile;//서버에 실제 저장된 파일명
    private int hitcount;//글 조회수
    private String replytext;//관리자 답변 내용
    private String repdate;//관리자 답변 날짜, 시간
}
