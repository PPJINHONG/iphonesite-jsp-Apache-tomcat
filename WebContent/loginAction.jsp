<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<!-- userDAO 참조 -->
<%@ page import="java.io.PrintWriter"%>
<!--  자바아이오에있는 자바스크립트사용하기위한 참조 -->
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page" />
<!-- 빈즈 클래스생성 <user.User user = new user.User()> -->

<jsp:setProperty name="user" property="userId" />
<jsp:setProperty name="user" property="userPass" />

<!DOCTYPE html>
<html lang="en">
<head>
</head>
<body>

	<%
		String userID = null;
		if(session.getAttribute("userID")!=null)
		{
		userID = (String)session.getAttribute("userID");
		}
		if(userID!=null)
		{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미로그인되어있습니다.')");
		script.println("location.href='main.jsp'");	
		script.println("</script>");
		}
		
		UserDAO userDAO = new UserDAO();
		int result =userDAO.login(user.getUserId(),user.getUserPass()); 
		if(result == 1 ){
			session.setAttribute("userID",user.getUserId());
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href='main.jsp'");
			script.println("</script>");
			
		}
		else if (result == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 일치하지않습니다')");
			script.println("history.back()");	
			script.println("</script>");
		
		}
		else if (result == -1){
			
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지않는 아이디입니다')");
			script.println("history.back()");	
			script.println("</script>");
	
		}
		
		else{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('데이터베이스 오류')");
			script.println("history.back()");	
			script.println("</script>");
		}
	%>

</body>
</html>