<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	String name =  request.getParameter("name");
	String id = request.getParameter("id");
	String pass =  request.getParameter("passwd");
	String birth =  request.getParameter("yy")+ request.getParameter("mm") + request.getParameter("dd");
	String phone =  request.getParameter("tel_mobile1") + request.getParameter("tel_mobile2") + request.getParameter("tel_mobile3");
	String gender =  request.getParameter("gender");
	String mail =  request.getParameter("email1") + "@" + request.getParameter("email2") ;
	String ename = request.getParameter("ename");
	String zipcode = request.getParameter("zipcode1") + request.getParameter("zipcode2");
	String address = request.getParameter("address1") + request.getParameter("address2");
	String job = request.getParameter("job");
	
	String agreecheck1 = request.getParameter("agreecheck1");
	String agreecheck2 = request.getParameter("agreecheck2");
	
	Connection conn=null;
	Statement stmt=null;
	ResultSet rs=null;
	String sql_update;
	
	if(agreecheck1 != null && agreecheck2 != null){
		try{
			Context init = new InitialContext();
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/join_db";
			conn = DriverManager.getConnection(url,"root","tossla369");
			stmt= conn.createStatement();
			String sql="select* from member_tbl";
			rs=stmt.executeQuery(sql);
	
			
			sql_update="insert into member_tbl values('"+name+"','"+id+"','"+pass+"','"+birth+"','"+phone+"','"
					+gender +"','"+mail+"','"+ename+"','"+zipcode+"','"+address+"','"+job+"')";
			
			
			int result = stmt.executeUpdate(sql_update);
			
			if(result!=0){			
				out.println("<body>");
				out.println("<h1>회원가입을 진심으로 환영합니다.</h1>");
				out.println("</body>");
			}
			else{
				out.println("<body>");
				out.println("회원가입 실패");
				out.println("</body>");
			}
		
	
		}catch(Exception e){
			   out.println("DB연동 오류입니다 : "+e.getMessage());
		}
	}
	else{
		out.println("<body>");
		out.println("회원 약관과 정보 수집에 동의해주셔야 합니다.");
		out.println("</body>");
		
	}
	
	
%>