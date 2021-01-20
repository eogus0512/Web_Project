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


	<article>
		<center>
		<h1>학부모 마당</h1>
		<table width="70%">
			<tr height="5" bgcolor="#9DC3E6" align="center">
				<td width="10%">글번호</td>
				<td width="10%">글쓴이</td>
				<td width="30%">글제목</td>
				<td width="20%">전자우편</td>
			</tr>
<%
	int id, ref, rownum=0;
	Connection conn=null;
	Statement stmt=null;
	String sql=null;
	ResultSet rs=null;

	try{
		Class.forName("com.mysql.jdbc.Driver");
		String jdbcurl="jdbc:mysql://localhost:3306/board_db";
		conn=DriverManager.getConnection(jdbcurl,"root","tossla369");
		stmt=conn.createStatement();
		sql="select*from board_tbl order by ref desc,id asc";
		rs=stmt.executeQuery(sql);
	}
	catch(Exception e){
	out.println("DB연동오류입니다.:"+e.getMessage());
	}
	
	rs.last();
	rownum=rs.getRow();
	rs.beforeFirst();
	
	while(rs.next())
	{
		id=Integer.parseInt(rs.getString("id"));
		ref=Integer.parseInt(rs.getString("ref"));
%>
			<tr>
				<td align="center"><%=rownum%></td>
				<td align="left"><%=rs.getString("name")%></td>
				<td align="left"><%if(id!=ref)out.println("└→");%>
					<a href=parents_read.jsp?id=<%=rs.getString("id")%> width="250">
					<%=rs.getString("title")%></a></td>
				<td align="center"><%=rs.getString("e_mail")%></td>
			</tr>
<%
	rownum--;
	}
%>
		</table>
		<br><br>
		<a href="parents_insert.jsp"><input type="button" width="70" height="30" value="글쓰기" /></a>
		<br><br><br><br><br><br><br><br>
<%
	stmt.close();
	conn.close();
%>
		</center>
	</article>

	<footer>
		<div id="footer_main"></div>
	</footer>


</body>
</html>