<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
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
	int id = Integer.parseInt(request.getParameter("id"));
	String name = "", e_mail = "", title = "", content = "", passwd = "";
	Connection conn = null;
	Statement stmt = null;
    ResultSet rs = null;
	
         
         try { 
        	 Class.forName("com.mysql.jdbc.Driver");
        	 String url = "jdbc:mysql://localhost:3306/board_db";
        	 conn = DriverManager.getConnection(url, "root", "tossla369");
        	 stmt = conn.createStatement();
        	 String sql = "select * from board_tbl where id = " + id;
        	 rs = stmt.executeQuery(sql);
         }
         catch(Exception e) {
               out.println("DB 연동 오류입니다. : " + e.getMessage());
         }
	
	 passwd = request.getParameter("passwd");

         while(rs.next())  {
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
%>
	<center>
      <h2> 게시글 수정 </h2><br><br>
      <form action="parents_modify_db.jsp" method="post"> 
       <table border="0">
          <tr>
             <td bgcolor="#9DC3E6" align="center"> 글 쓴 이 </td>
             <td><input type="text" name="name" size="60" value="<%= rs.getString("name") %>"></td>
          </tr>        
          <tr>
             <td bgcolor="#9DC3E6" align="center"> 메일주소 </td>
             <td><input type="text" name="e_mail" size="60" value="<%= rs.getString("e_mail") %>"></td>
          </tr>                      
          <tr>
             <td bgcolor="#9DC3E6" align="center"> 글 제 목 </td>
             <td><input type="text" name="title" size="60" value="<%= rs.getString("title") %>"></td>
          </tr>
          <tr>
             <td bgcolor="#9DC3E6" align="center"> 글 내 용 </td>
             <td><textarea name="content" cols="60" rows="4"><%= rs.getString("content") %></textarea></td>
          </tr>    
        </table><br><br>

        <input type="hidden" name="id" value="<%= request.getParameter("id") %>">

        <input type="submit" value="등록하기">  
        <input type="reset" value="다시쓰기">
      </form><br>

       <a href="parents_read.jsp?id=<%= request.getParameter("id") %>"> 취소 </a>
       </center> 
      
      <%      
              }
 	  } 
       %>
       <br><br><br><br><br>

	<footer>
		<div id="footer_main"></div>
	</footer>
  </body>
</html>