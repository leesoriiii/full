<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs"%>
<%@ page import="user.User"%>
<%@ page import="user.UserDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view.jsp</title>
<style type="text/css">
@font-face {
font-family: 'UhBeeRami';
src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_five@.2.0/UhBeeRami.woff') format('woff');
font-weight: normal;
font-style: normal;
}
@font-face {
    font-family: 'Orbit-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2310@1.0/Orbit-Regular.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
body {
	height:900px;
	background-color: #FCDEAB;
	display: flex;
 	flex-direction: column;
    justify-content: center;
	justify-content: center;
    align-items: center;
}
hr {
  border: none; /* 기본 테두리 제거 */
  border-top: 3px dotted #ffffff; 
  width: 81%; /* 가로 너비 */
  margin: 5px 0; /* 위아래 여백 추가 (선택적) */
  margin-bottom: 30px;
}
#header {
	padding-top: 0px;
	width: 110%;
	padding-left: 17%;
	margin-bottom: 20px;
}
#heading{
margin-top:128px;
	font-family: 'UhBeeRami';
	color: white;
    font-size: 80px;
    text-shadow: 2px 2px #faa821;
}
.container{ 
	margin-bottom: 100px;
}
th, tr, td { 
	font-family: 'Orbit-Regular';
	border: 1px solid #f38400;
	height: 30px;
}
th {
	font-weight: bold; 
 }
a:hover { 
	color : inherit;
	text-decoration: underline;
	
}
a { 
	color : inherit;
	text-decoration: none;
}
.btn-primary {
	font-weight: bold; 
	font-family: 'Orbit-Regular';
}
.table_striped {
	color: #000000;
	border: 1px solid #f38400; 
	border-collapse: collapse;
	
}

</style>
</head>
<body>
<%
	String userID = null;
	if(session.getAttribute("userID") != null) {
	userID = (String)session.getAttribute("userID");
	}

	int bbsID = 0;
	if(request.getParameter("bbsID") != null) {
		bbsID = Integer.parseInt(request.getParameter("bbsID"));
	}
	if(bbsID == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다.')");
		script.println("location.href = '/cs'");
		script.println("</script>");
	}
	Bbs bbs = new BbsDAO().getBbs(bbsID);
%>
<h1 id="heading">Review</h1>

	<div class="container">
		<div class="row">
			<table class="table_striped"
				style="text-align: center; border: 1px solid #00000;">
				<thead>
					<tr>
						<th colspan="3"
							style="color:#ffffff; background-color: #f38400; text-align: center; width: 800px;">게시판 글 보기</th>
					</tr>
				</thead>
				<tbody>
					<tr style="background-color: #ffffff;">
						<td>글 제목</td>
						<td colspan="2"><%= bbs.getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>")%></td>
					<tr style="background-color: #ffffff;">
						<td>작성자</td>
						<td colspan="2"><%= bbs.getUserID() %></td>
					</tr>
					<tr style="background-color: #ffffff;">
						<td>작성일자</td>
						<td colspan="2"><%= bbs.getBbsDate().substring(0,11) + bbs.getBbsDate().substring(11,13) + "시" + bbs.getBbsDate().substring(14,16) + "분" %></td>
					</tr>
					<tr style="background-color: #ffffff;">
						<td>내용</td>
						<td colspan="2" style="min-width:500px; height:350px; vertical-align: top; text-align: left;"><%= bbs.getBbsContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>")%></td>
					</tr>
				</tbody>
			</table>
			<a href="/board/cs" class = "btn-primary">목록</a>
			<%
				if(userID !=null && userID.equals(bbs.getUserID())) {
			%>
					<a href="update?bbsID=<%= bbsID %>" class="btn-primary">수정</a>
					<a onclick="return confirm('정말로 삭제하시겠습니까?')" href="deleteAction?bbsID=<%= bbsID %>" class="btn-primary">삭제</a>
			<%
				}
			%>
		</div>
	</div>
	
	<div id="header">
		<hr>
		<p style="margin-left:10px; font-size: 14px; font-weight: bold; color: white;">가득샵<br>
		<span id="Business" style="font-size: 12px;">
		상호명: 가득샵 | 대표: 이소리<br>
		사업자등록번호: 372-05-02494 | 통신판매업 2022-인천계양-0631<br>
		주소: 인천광역시 계양구 경명대로 1058, 302-1336호(계산동)
		</span>
		</p>
	</div>
</body>
</html>