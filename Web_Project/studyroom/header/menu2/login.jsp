<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String id = (String)session.getAttribute("id");
	if(id != null){
%>
		
	<table>
		<tr align="center">
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<%=id %>님 환영합니다!</td>
		</tr>
		<tr align="center">
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="./logout.jsp"><img src="./../../img/header/menu2/logout.png" width="80" height="40"></a></td>
		</tr>
	</table>
<%
	}
	else{
%>
		<form name="loginform" action="loginProcess.jsp" method="post">		
			<table>
				<tr>
					<th>아이디</th>
					<th><input id="userid" name="userid" type="text" size="10" required></th>
					<th rowspan = "2"><input type="image" src="./../../img/header/menu2/login.png" alt="Submit" width="70" height="50"></th>
				</tr>
				<tr>
					<th>비밀번호</th>
					<th><input id="userpw" name="userpw" type="password" size="10" required></th>
				</tr>
			</table>
			<table>
				<tr>
					<td align="left" width="125px"><a href="#" onclick="window.open('./join.jsp','popup','width=850,height=700,left=0,top=0'); return false;"><img src="./../../img/header/menu2/join.png" width="110" height="30"></a></td>
					<td align="left" width="110px"><a href="#" onclick="window.open('./idpwfind.jsp','popup','width=450,height=700,left=0,top=0'); return false;"><img src="./../../img/header/menu2/idpwfind.png" width="110" height="30"></a></td>
				</tr>
			</table>
		</form>	
<%
	}
%>
