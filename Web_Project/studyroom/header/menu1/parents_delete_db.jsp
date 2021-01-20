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
       String passwd = "", sql, sql1;
       Connection conn = null;
       Statement stmt = null;
       ResultSet rs = null;
       id = Integer.parseInt(request.getParameter("id"));
   
       try { 
             Class.forName("com.mysql.jdbc.Driver");
	     String url = "jdbc:mysql://localhost:3306/board_db";
	     conn = DriverManager.getConnection(url, "root", "tossla369");
	     stmt = conn.createStatement();
             sql = "select * from board_tbl where id = " + id;
             rs = stmt.executeQuery(sql);
       }
       catch(Exception e) {
             out.println("DB 연동 오류입니다. : " + e.getMessage());
       }

       passwd = request.getParameter("passwd");      
       while(rs.next()) {
		 if(!passwd.equals(rs.getString("passwd")))
		 {
    %>
    <center><h2> 잘못 입력된 패스워드입니다. </h2>
      <a href="parents_read.jsp?id=<%= request.getParameter("id") %>"> 뒤로 </a>
    </center>
    <%      
	         }
                 else
		 {
		    sql1 = "delete from board_tbl where id = " + id;
                    try { 		     
                          stmt.executeUpdate(sql1); 
                    }  
	            catch(Exception e) {
                          out.println("DB 연동 오류입니다. : " + e.getMessage());
                    }
    %>
    <center><h2> 게시글이 삭제되었습니다. </h2>
      <a href="parents.jsp"><input type="button" width="70" height="30" value="목록" /></a> 
    </center><br><br><br><br><br>
    
    <%
		    break;
		 }
	}
    %>
	<footer>
		<div id="footer_main"></div>
	</footer>
	
  </body>
</html>