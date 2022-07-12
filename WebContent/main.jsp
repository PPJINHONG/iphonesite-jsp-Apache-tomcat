<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title></title>
<meta charset="UTF-8">
<title>asdf</title>
<link rel="stylesheet" type="text/css" href="css/mainstyle.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="js/main.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>




</head>

<body>

	<%
	String userID = null;
	if(session.getAttribute("userID")!=null)
	{
		userID = (String) session.getAttribute("userID");
	}
%>



<div id="headdiv">
	<table>

		<tr>
			<td><a href="main.jsp"><i class="fas fa-home"
						style="font-size: 20px;"></i></a></td>
			<td>iPad</td>
			<td>iPhone</td>
			<td><a href="about.jsp">About</a></td>

			<td>
				<ul>


					<li class="dropdown"><a href="javascript:void(0)"
						class="dropbtn" onclick="myFunction()"><i
							class="fas fa-caret-square-down" style="font-size: 20px;"></i></a>
						<div class="dropdown-content" id="myDropdown">
						<%
						if(userID==null){
						%>
							<a href="login.jsp">로그인</a> <a href="Join.jsp">회원가입</a>
							 <a href="#">sexs</a>
						<%
						}else{
						%>
							<a href="logoutAction.jsp">로그아웃</a>
							<a href="#">sexs</a>
						<%
							}
						%>
						</div></li>

				</ul>
			</td>
		</tr>
	</table>
</div>




</body>
</html>
