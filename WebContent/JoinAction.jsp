<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<!-- userDAO 참조 -->
<%@ page import="java.io.PrintWriter"%>
<!--  자바아이오에있는 자바스크립트사용하기위한 참조 -->
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page" />
<!-- 빈즈 클래스생성 <user.User user = new user.User()> -->

<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userId" />
<jsp:setProperty name="user" property="userPass" />
<jsp:setProperty name="user" property="userResident" />
<jsp:setProperty name="user" property="userEmail" />
<jsp:setProperty name="user" property="userPhone" />
<jsp:setProperty name="user" property="userAdress" />



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
	
	
	
		if(user.getUserName()==null || user.getUserId()==null ||user.getUserPass()==null ||user.getUserResident()==null ||user.getUserEmail()==null || user.getUserPhone()==null )
		{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력되지않은 정보가있습니다.')");
			script.println("history.back()");	
			script.println("</script>");
		}
		else{
			UserDAO userDAO = new UserDAO();
			int result =userDAO.join(user); 
			if(result == -1 ){
				
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이미 존재하는 아이디입니다')");
				script.println("history.back()");	
				script.println("</script>");
			
			}
			else {
				
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("location.href = 'main.jsp'");
				script.println("</script>");
			
			}
		}
			
		
	%>

</body>
</html>