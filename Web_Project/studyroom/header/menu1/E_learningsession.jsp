<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = (String)session.getAttribute("id");
	if(id != null){
		%>
		<script>
			location.href='./E_learning.jsp';
		</script>
		<%
	}
	else{
		%>
		<script>
			alert("로그인 후 이용해 주세요");
			location.href='./../../index.jsp';
		</script>
		<%
	}
%>