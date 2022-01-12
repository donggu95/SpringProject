<%@page import="com.koreait.matjip.domain.Review"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	Review review = (Review)request.getAttribute("review");
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}
input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}
input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=submit]:hover {
  background-color: #45a049;
}
.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<script type="text/javascript">
function del(){
	if(confirm("삭제하시겠어요?")){
		location.href="/review/delete?review_id=<%=review.getReview_id()%>";
	}	
}
function edit(){
	if(confirm("수정하시겠어요?")){
		form1.action="/review/update";
		form1.method="post";
		form1.submit();
		
		// 
	}
}
</script>
</head>

<h3>리뷰 내용</h3>

<div class="container">
  <form name="form1">
    <input type="hidden"  	name="review_id" 			value="<%=review.getReview_id()%>">
    <input type="text"  		name="review_title" 		value="<%=review.getReview_title()%>">
    <textarea						name="review_content" style="height:200px"><%=review.getReview_content()%></textarea>
    <%-- <input type="file" 			name="myFile" 				value="<%=review.getMyFile() %>>"> --%>
   	
    <input type="button" value="목록" onClick="location.href='/review/listReview'">
    <input type="button" value="수정" onClick="edit()">
    <input type="button" value="삭제" onClick="del()">
  </form>
</div>

</body>
</html>