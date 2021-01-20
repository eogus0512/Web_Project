<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@page import="java.text.*"%>
<%
   request.setCharacterEncoding("UTF-8");
%>
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
	int temp=0,cnt;
	int new_id=0,ref=0;
	String name,e_mail,title,content,passwd,reply;
	Connection conn=null;
	Statement stmt=null;
	ResultSet rs=null;
	String sql_update;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		String jdbcurl="jdbc:mysql://localhost:3306/board_db";
		conn=DriverManager.getConnection(jdbcurl,"root","tossla369");
		stmt= conn.createStatement();
		String sql="select max(id) as max_id, count(*) as cnt from board_tbl";
		rs=stmt.executeQuery(sql);

	}
	catch(Exception e){
		out.println("DB연동 오류입니다 : "+e.getMessage());
	}
	while(rs.next()){
		cnt=Integer.parseInt(rs.getString("cnt"));
		if(cnt!=0)
			new_id=Integer.parseInt(rs.getString("max_id"));         
	}
	new_id++;
	name=request.getParameter("name");
	e_mail=request.getParameter("e_mail");
	title=request.getParameter("title");
	content=request.getParameter("content");
	passwd=request.getParameter("passwd");
	reply=request.getParameter("reply");
	if("y".equals(reply)){
	   ref=Integer.parseInt(request.getParameter("ref"));
	}else{
	   ref=new_id;
	}
	sql_update="insert into board_tbl values('"+new_id+"','"+name+"','"+e_mail +"','"+title+"','"+content+"','"
	+passwd +"','"+ref+"')";
	try{
	   stmt.executeUpdate(sql_update);
	}catch(Exception e){
	   out.println("DB연동 오류입니다 : "+e.getMessage());
	}
%>
	<center>
	<h2>작성한 글이 등록되었습니다.</h2>
	<a href="parents.jsp">
		<input type="button" width="70" height="30" value="목록" /></a>
	</center>
	
	<br><br><br><br><br><br><br>
	<footer>
		<div id="footer_main"></div>
	</footer>
</body>
</html>