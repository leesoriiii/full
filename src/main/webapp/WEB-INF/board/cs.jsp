<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board.jsp</title>
<style type="text/css">
@font-face{
font-family:'DNFBitBitv2';
font-style:normal;font-weight:400;src:url('//cdn.df.nexon.com/img/common/font/DNFBitBitv2.otf')format('opentype')}
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

a:hover { 
	color : inherit;
	text-decoration: underline;
	
}
a { 
	color : inherit;
	text-decoration: none;
}
.btn-success-btn-arraw-left, .btn-primary {
	font-weight: bold; 
	font-family: 'Orbit-Regular';
}
#heading{
	margin-top:20px;
	font-family: 'UhBeeRami';
	color: white;
    font-size: 80px;
    text-shadow: 2px 2px #faa821;
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
	background-color: #ffffff;
 }
.table_striped {
	color: #000000;
	border: 1px solid #f38400; 
	border-collapse: collapse;
	background-color: #ffffff;
}


</style>
</head>
<body>
<%
	//로그인 한 상태이면 사용할수 없게
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	int pageNumber = 1;
	if (request.getParameter("pageNumber") != null) {
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
	}
%>
<h1 id="heading">Review</h1>

<div class="container">
		<div class="row">
			<table class="table_striped" style="text-align: center; ">
				<thead style="color:#ffffff; background-color: #f38400;">
					<tr>
						<th style="text-align: center; width: 50px; background-color: #f38400;">번호</th>
						<th style="text-align: center; width: 500px; background-color: #f38400;">제목</th>
						<th style="text-align: center; width: 100px; background-color: #f38400;">작성자</th>
						<th style="text-align: center; width: 200px; background-color: #f38400;">작성일</th>
					</tr>
				</thead>
				<tbody>
				<% 
					BbsDAO bbsDAO = new BbsDAO();
					ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
					for(int i=0; i< list.size(); i++) {
				%>
				<tr>
					<td><%= list.get(i).getBbsID() %></td>
					<td><a href="view?bbsID=<%= list.get(i).getBbsID() %>"> <%= list.get(i).getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>")%></a></td>
					<td><%= list.get(i).getUserID() %></td>
					<td><%= list.get(i).getBbsDate().substring(0,11) + list.get(i).getBbsDate().substring(11,13) + ":" + list.get(i).getBbsDate().substring(14,16) %></td>
				</tr>
				<%
					}
				%>
				</tbody>
			</table>
			<%
				if(pageNumber !=1) {
			%>
				<a href="cs?pageNumber=<%=pageNumber - 1%>" class="btn-success-btn-arraw-left">이전</a>
			<%
				} if(bbsDAO.nextPage(pageNumber + 1)) {
			%>
				<a href="cs?pageNumber=<%=pageNumber + 1%>" class="btn-success-btn-arraw-left">다음</a>
			<%
				}
			%>
			<a href="/board/write" class="btn-primary">글쓰기</a>
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