<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userGender" />
<jsp:setProperty name="user" property="userEmail" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginAction.jsp</title>
</head>
<body>
	<%
	String userID = null;
//로그인 한 상태이면 사용할수 없게
	if(session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	if(userID != null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 로그인이 되어있습니다.')");
		script.println("location.href = '/'");
		script.println("</script>");
	}
	
		if(user.getUserID() == null || user.getUserPassword() == null|| user.getUserName() == null 
			|| user.getUserGender() == null || user.getUserEmail() == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안 된 사항이 있습니다.')");
			script.println("history.back()");
			script.println("</script>");
			} else {
				UserDAO userDAO = new UserDAO();
				int result = userDAO.join(user);
				if(result == -1) { // 데이터베이스 오류
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('이미 존재하는 아이디 입니다.')");
					script.println("history.back()");
					script.println("</script>");
				} else { //회원가입 완료
					session.setAttribute("userID", user.getUserID());
					session.setAttribute("userName", user.getUserName());
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("location.href = '/'");
					script.println("</script>");
				
				}
			}

		
	%>
</body>
</html>