<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>

<html>

<head>
	<title>수학의 달인</title>
	<meta charset="UTF-8">
	<style type="text/css">
		table, th, td 
		{
			border: 1px solid #41719C;
			border-collapse:collapse;
		}
	</style>
	<link rel="stylesheet" type="text/css" href="./../../main_layout.css" />
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
</head>



<body>
	<header>
		<div id="header_menu">	
			<div><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="./../../index.jsp"><img src="./../../img/header/menu2/logo.png"></a></div><br><br><br>
			<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="./../../header/menu1/signup.jsp">수강신청</a></div>
			<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="./../../header/menu1/bookinfo.jsp">교재정보</a></div>		
			<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="./../../diary/index.jsp">시험정보</a></div>
			<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="./../../header/menu1/parentssession.jsp">학부모마당</a></div>
			<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="./../../header/menu1/E_learningsession.jsp">E - 러닝</a></div>			
		</div>
	</header>
	
	<br><hr color="#9DC3E6"> <br><br><br>

<center><h2> 패스워드를 입력하시오 </h2><br><br>
      <form action="parents_delete_db.jsp" method="post">
        <table border="0">
          <tr>
			<td bgcolor="#9DC3E6" align="center"> 패스워드 </td>
          	<td><input type="password" name="passwd" size="30"></td>
            <td><input type="hidden" name="id" value="<%= request.getParameter("id") %>"></td>
          </tr>           
       </table><br><br>
       <input type="submit" value="삭제하기">  
       <input type="reset" value="다시쓰기">
     </form><br>
     <a href="parents_read.jsp?id=<%= request.getParameter("id") %>"> 취소 </a>
   </center><br><br><br><br><br>

	<footer>
		<div id="footer_main"></div>
	</footer>
	
</body>
</html>