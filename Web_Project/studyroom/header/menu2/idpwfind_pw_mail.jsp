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
	String mail =  request.getParameter("mail");
	String name_ = null;
	String mail_ = null;
	
	Connection conn = null;
	PreparedStatement pstmt=null;
	ResultSet rs = null;
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/join_db";
		conn = DriverManager.getConnection(url,"root","tossla369");
		pstmt=conn.prepareStatement("select* from member_tbl where name=? and mail=?");
		
		pstmt.setString(1, name);
		pstmt.setString(2, mail);
		rs=pstmt.executeQuery();
		
		if(rs.next()){
			name_ = request.getParameter("name");
			mail_ =  request.getParameter("mail");
			session.setAttribute("name", name);
%>
	<table>
		<tr align="center">
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			회원님의 비밀번호는<%= rs.getString("pass")%>입니다.</td>
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