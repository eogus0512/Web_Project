<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
	<title>수학의 달인</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="./../../main_layout.css" />
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
</head>

<body>
	<header>
		<div id="header_menu">	
			<div><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="./../../index.jsp"><img src="./../../img/header/menu2/logo.png"></a></div><br><br><br>
			<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
	<center>
	<h1>게시글 내용</h1><br>
	<table>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	Connection conn=null;
	Statement stmt=null;
	String sql=null;
	ResultSet rs=null;

	try{
		Class.forName("com.mysql.jdbc.Driver");
		String jdbcurl="jdbc:mysql://localhost:3306/board_db";
		conn=DriverManager.getConnection(jdbcurl,"root","tossla369");
		stmt=conn.createStatement();
		sql="select*from board_tbl where id=" + id;
		rs=stmt.executeQuery(sql);
	}
	catch(Exception e){
	out.println("DB연동오류입니다.:"+e.getMessage());
	}
	
	while(rs.next()) {
%>
	
		<tr>
			<td bgcolor="#9DC3E6" align="center"> 글 쓴 이 </td>
			<td><%=rs.getString("name") %></td>
		</tr>
		<tr>
			<td bgcolor="#9DC3E6" align="center"> 메일주소 </td>
			<td><%=rs.getString("e_mail") %></td>
		</tr>
		<tr>
			<td bgcolor="#9DC3E6" align="center"> 글 제 목 </td>
			<td><%=rs.getString("title") %></td>
		</tr>
		<tr>
			<td bgcolor="#9DC3E6" align="center"> 글 내 용 </td>
			<td><%=rs.getString("content") %></td>
		</tr>
<%	
	}
%>
	</table>

<%
	stmt.close();
	conn.close();
%>
	<br>
	<a href="parents.jsp">
		<input type="button" width="70" height="30" value="목록" /></a>
	<form action="parents_modify_pwd.jsp" method="post">
		<input type="submit" width="70" height="30" value="수정" />
		<input type="hidden" name="id" value="<%= request.getParameter("id") %>">
	</form>
	<form action="parents_delete_pwd.jsp" method="post">
		<input type="submit" width="70" height="30" value="삭제" />
		<input type="hidden" name="id" value="<%= request.getParameter("id") %>">
	</form>
	
	<br><br><br><br><br><br><br>
	<footer>
		<div id="footer_main"></div>
	</footer>

</body>
</html>