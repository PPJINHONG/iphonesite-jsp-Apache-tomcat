<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

  <!DOCTYPE html>
  <html lang="en">
    <head>
      <title></title>
      <meta charset="UTF-8">
        <title>회원가입</title>
        <link rel="stylesheet" type="text/css" href="css/joinstyle.css">
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
        
        
        
        
        
        
        
        

          <div class="headdiv1">
            Register

          </div>
          <div class="headdiv2">
            ID 생성
          </div>
          <br>
            <hr>
              <br>
                <div class="formdiv">
                  <form name="form_register" id="form_register" method="post" action="JoinAction.jsp">

                    <table>
                      <tr>
                        <td id="tdtext">
                          USER INFORMATION
                        </td>
                      </tr>
                      <tr>

                        <td class="td2">
                          <input class="input100" type="text" name="userName" placeholder="이름" value=""></td>

                        </tr>
                        <tr>
                          <td class="td2">
                            <input class="input100" type="text" name="userResident" placeholder="생년월일  ex.970101" value=""></td>
                          </tr>

                          <tr>
                            <td>
                              <input class="input1001" type="text"
              									name="userPhone" placeholder="전화번호" value=""></td>
                          </tr>
                          <tr>
                            <td id="tdtext">
                              ID PASSWORD
                            </td>
                          </tr>
                          <tr>
                            <td class="td2">
                              <input class="input100" type="text" name="userId" placeholder="아이디" value=""></td>
                            </tr>

                            <tr>
                              <td id="pw">
                                <input class="input100" type="password" name="userPass" placeholder="비밀번호" value=""></td>
                              </tr>

                              <tr>
                                <td id="pwc">
                                  <input class="input100" type="password" name="Pass2" placeholder="비밀번호 확인" value=""></td>
                                </tr>

                                <tr>
                                  <td id="tdtext">
                                    EMAIL
                                  </td>
                                </tr>
                                <tr>
                                  <td>
                                    <input class="input100" type="text"
                    									name="userEmail" placeholder="name@example.com" value="">
                                    </td>
                                </tr>
                                <tr>
                                  <td id="tdtext">
                                    ADRESS
                                  </td>
                                </tr>
                                <tr>
                                  <td>
                                    <input class="input100" type="text"
                                      name="userAdress" placeholder="주소" value="">
                                  </td>
                                </tr>
                                <tr>
                                  <td id="tdsubmit">
                                  	<input type="submit" value="확인">

                                        <button type="button" id="but" name="button" >취소</button>
                                    </td>
                                </tr>

                              </table>

                            </form>
                          </div>

                        </body>
                      </html>
