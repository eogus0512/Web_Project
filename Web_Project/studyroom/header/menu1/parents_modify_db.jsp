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
	
     <%
         int id;
	 String name = "", e_mail = "", title = "", content = "";
	 Connection conn = null;
	 Statement stmt = null;
         ResultSet rs = null;
	    
         id = Integer.parseInt(request.getParameter("id"));	
	 name = request.getParameter("name");
	 e_mail = request.getParameter("e_mail");
	 title = request.getParameter("title");
	 content = request.getParameter("content");
	
	 try {
              Class.forName("com.mysql.jdbc.Driver");
	      String url = "jdbc:mysql://localhost:3306/board_db";
                   conn = DriverManager.getConnection(url, "root", "tossla369");
              stmt = conn.createStatement();
              String sql_update = "update board_tbl set name = '" + name + "', e_mail = '" + e_mail + "', title = '" + title + "', content = '" + content + "' where id = " + id ;
	      stmt.executeUpdate(sql_update);
         }
         catch(Exception e) {
               out.println("DB 연동 오류입니다. : " + e.getMessage());
         }
     %>

    <center><h2> 게시글이 수정되었습니다. </h2>
    <a href="parents_read.jsp?id=<%= request.getParameter("id") %>"> 작성한 글 확인 </a>
    <a href="parents.jsp"> 게시글 목록 보기 </a>
    </center><br><br><br><br><br>

	<footer>
		<div id="footer_main"></div>
	</footer>
  </body>
</html>l>