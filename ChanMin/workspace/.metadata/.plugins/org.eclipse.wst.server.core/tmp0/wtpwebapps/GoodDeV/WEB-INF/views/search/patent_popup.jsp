<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="ko">
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/cloud/resources/css/style.css">
<link rel="stylesheet" href="/cloud/resources/css/Board.css">

<script src="/cloud/resources/js/jquery-3.4.1.min.js"></script>
<script src="/cloud/resources/js/jquery-ui.min.js"></script>
<script>
$(function(){
    $('#closebtn').on('click', function(){
        window.close();
    });
});
</script>

</head>
<body>
<div class="Detail_table">
      <h3 style="text-align: center;">특허 상세 정보</h3><br>
       <table class="table" style="border : 1px solid #999999;">
          <tr>
               <th class="navy">특허 번호</th>
               <td>${pat.patentNum}</td>
           </tr>
           <tr>
               <th class="navy">특허명</th>
               <td>${pat.patentName}</td>
           </tr>
           <tr>
               <th class="navy">특허 내용</th>
               <td>${pat.patentContent}</td>
           </tr>
       </table>
       <button type="button" class="btns btn-3" style="align-items: center;" id="closebtn">닫기</button>
       
   </div>
</body>
</html>