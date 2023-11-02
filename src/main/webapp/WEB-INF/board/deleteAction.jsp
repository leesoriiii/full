<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>deleteAction.jsp</title>
</head>
<body>
<%

	//로그인 한 상태이면 사용할수 없게
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	if(userID == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인이 필요한 서비스 입니다.')");
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
		
	} else {
		BbsDAO bbsDAO = new BbsDAO();
		int result = bbsDAO.delete(bbsID);
		if(result == -1) { // 데이터베이스 오류
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('글 삭제에 실패했습니다.')");
			script.println("history.back()");
			script.println("</script>");
	} else { //글쓰기 완료
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href = '/board/cs'");
		script.println("</script>");
		}
	}
		
	%>
</body>
</html>