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
	String name =  request.getParameter("username");
	String phone =  request.getParameter("tel_mobile1") + request.getParameter("tel_mobile2") + request.getParameter("tel_mobile3");
	String name_ = null;
	String phone_ = null;
	
	Connection conn = null;
	PreparedStatement pstmt=null;
	ResultSet rs = null;
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/join_db";
		conn = DriverManager.getConnection(url,"root","tossla369");
		pstmt=conn.prepareStatement("select* from member_tbl where name=? and phone=?");
		
		pstmt.setString(1, name);
		pstmt.setString(2, phone);
		rs=pstmt.executeQuery();
		
		if(rs.next()){
			name_ = request.getParameter("name");
			phone_ =  request.getParameter("phone");
			session.setAttribute("name", name);
%>
	<table>
		<tr align="center">
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			회원님의 아이디는<%= rs.getString("id")%>입니다.</td>
		</tr>
	</table>
		
<%
			
		}
		else{
%>
			<script>
				alert("일치하는 정보가 없습니다.");
				location.href='./idpwfind.jsp';
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