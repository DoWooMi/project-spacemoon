<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">    
<html>
<head>
<style type="text/css">
td {
	text-align: left;
}
.rating .star {
  color: #ccc;
  cursor: pointer;
  font-size: 30px;
}
.rating .star.active {
  color: gold;
}

</style>
<title>Space Moon</title>
</head>
<body>

<div class="content" style="width: 930px; margin: 0 auto; position: relative; text-align: center;" >
<br>
<h3>Q&A 등록</h3>
<br>
<br>
<div>
	<form class="row gx-3 gy-2 align-items-center" name="f" method="post">
		<input type="hidden" name="fHid" value="관리자">
		<table class="table table-bordered">
			<tr>
				<th>상품 번호</th>
				<td>
					<input type="text" id="qSno" value="${question.QSno}">
					
				</td>
			</tr>
		
			<tr>
				<th>제목</th>
				<td>
					<input type="text" name="qTitle" id="qTitle" style="width: 800px;" value="${question.QTitle}">
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<textarea rows="5" cols="91" name="qContent" id="qContent" >${question.QContent}</textarea>
				</td>
			</tr>
			
		</table>	
			 <input type="hidden" name="qNo" value="${question.QNo }">
	</form>
	<div style="text-align: center;">
	<br>
		<p><button onclick="questionModify();" type="button" id="writeBtn" class="btn btn-primary btn-sm">게시글등록</button>
		<button type="button" id="resetBtn" class="btn btn-primary btn-sm"  onclick="reset();">다시작성</button></p>
	</div>
	</div>
	</div>
</body>
<script language="JavaScript">
function questionModify() {
	if ( qTitle.value == "" ) {
		alert("제목을 입력해주세요.");
		qTitle.focus();
		return;
	} 
	if ( qContent.value == "" ) {
		alert("내용을 입력해주세요.");
		qContent.focus();
		return;
	}
	
	f.action = "<c:url value="/member_question_modify"/>";
	f.submit();
}
	function reset() {
		  document.getElementById("qContent").value = "";
		  document.getElementById("qTitle").value = "";
		}
		
			
			
	
</script>
</html>