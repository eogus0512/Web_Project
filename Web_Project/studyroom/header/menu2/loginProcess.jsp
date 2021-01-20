<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
</head>

<body>
<%
	String id = request.getParameter("userid");
	String pass = request.getParameter("userpw");
	String id_ = null;
	String pass_ = null;
	
	Connection conn = null;
	PreparedStatement pstmt=null;
	ResultSet rs = null;
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/join_db";
		conn = DriverManager.getConnection(url,"root","tossla369");
		pstmt=conn.prepareStatement("select* from member_tbl where id=? and pass=?");
		
		pstmt.setString(1, id);
		pstmt.setString(2, pass);
		rs=pstmt.executeQuery();
		
		if(rs.next()){
			id_ = request.getParameter("id");
			pass_ =  request.getParameter("pass");
			session.setAttribute("id", id);
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
			<script>
				alert("아이디와 비밀번호를 확인해주세요!");
				location.href='./login.jsp';
			</script>
<%
		}
		
	}
	catch(Exception e){
		out.println("DB연동오류입니다.:"+e.getMessage());
	}
%>
</body>
</html>
