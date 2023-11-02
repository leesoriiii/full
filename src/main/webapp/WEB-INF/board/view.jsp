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
<title>cube.jsp</title>
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
<hr>
<h1 id="heading">글내용</h1>

	<div class="container">
		<div class="row">
			<table class="table_striped"
				style="text-align: center; border: 1px solid #00000;">
				<thead>
					<tr>
						<th colspan="3"
							style="background-color: #eeeeee; text-align: center;">게시판 글 보기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 20%">글 제목</td>
						<td colspan="2"><%= bbs.getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>")%></td>
					<tr>
						<td>작성자</td>
						<td colspan="2"><%= bbs.getUserID() %></td>
					</tr>
					<tr>
						<td>작성일자</td>
						<td colspan="2"><%= bbs.getBbsDate().substring(0,11) + bbs.getBbsDate().substring(11,13) + "시" + bbs.getBbsDate().substring(14,16) + "분" %></td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="2" style="min-height: 200px; min-width:500px; text-align: left;"><%= bbs.getBbsContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>")%></td>
					</tr>
				</tbody>
			</table>
			<a href="/board/cs" class = "btn-primary">목록</a>
			<%
				if(userID !=null && userID.equals(bbs.getUserID())) {
			%>
					<a href="update?bbsID=<%= bbsID %>" class="btn-primary">수정</a>
					<a href="deleteAction?bbsID=<%= bbsID %>" class="btn-primary">삭제</a>
			<%
				}
			%>
		</div>
	</div>
</body>
</html>