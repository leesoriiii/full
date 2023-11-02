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
body {
	margin: 100px;
	background-color: #FCDEAB;
	display: flex;
 	flex-direction: column;
    justify-content: center;
	justify-content: center;
    align-items: center;
}
a, a:hover { 
	color : #00000;
	text-decoration: none;
}

</style>
</head>
<body>
<hr>
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
<h1 id="heading">문의게시판</h1>

<div class="container">
		<div class="row">
			<table class="table_striped" style="text-align: center; border: 1px solid #00000; width: 500px;">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">작성자</th>
						<th style="background-color: #eeeeee; text-align: center;">작성일</th>
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
					<td><a href="view?bbsID=<%= list.get(i).getBbsID() %>"> <%= list.get(i).getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>")%>%></a></td>
					<td><%= list.get(i).getUserID() %></td>
					<td><%= list.get(i).getBbsDate().substring(0,11) + list.get(i).getBbsDate().substring(11,13) + "시" + list.get(i).getBbsDate().substring(14,16) + "분" %></td>
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
</body>
</html>