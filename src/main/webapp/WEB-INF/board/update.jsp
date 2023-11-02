<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs"%>
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
	
	if (userID == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인이 필요한 서비스입니다.')");
		script.println("location.href = '/login'");
		script.println("</script>");
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
		if (!userID.equals(bbs.getUserID())) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('권한이 없습니다.')");
			script.println("location.href = '/cs'");
			script.println("</script>");
			
		}
%>

<hr>
<h1 id="heading">게시글 수정</h1>

<div class="container">
		<div class="row">
		<form method="post" action="/board/updateAction?bbsID=<%= bbsID %>">
			<table class="table_striped" style="text-align: center; border: 1px solid #00000; ">
				<thead>
					<tr>
						<th  colspan="2" style="background-color: #eeeeee; text-align: center;">게시판 글 수정</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50" value="<%= bbs.getBbsTitle()%>"></td>
					</tr>
					<tr>
						<td><textarea class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048" style="height: 350px;"><%= bbs.getBbsContent()%></textarea></td>
					</tr>
				</tbody>
			</table>
				<input type="submit" class="btn-primary" value="글수정">
		</form>
		</div>
	</div>
</body>
</html>