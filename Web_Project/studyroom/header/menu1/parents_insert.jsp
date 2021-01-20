<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>  
<!DOCTYPE html > 
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
	<center>
	<form method=post action="parents_insert_db.jsp">
	<h1>게시글 작성</h1><br>
	<table>
		<tr>
			<td bgcolor="#9DC3E6" align="center"> 글 쓴 이 </td>
			<td><input name="name" type="text" size="60" /></td>
		</tr>
		<tr>
			<td bgcolor="#9DC3E6" align="center"> 메일주소 </td>
			<td><input name="e_mail" type="text" size="60" /></td>
		</tr>
		<tr>
			<td bgcolor="#9DC3E6" align="center"> 글 제 목 </td>
			<td><input name="title" type="text" size="60" /></td>
		</tr>
		<tr>
			<td bgcolor="#9DC3E6" align="center"> 글 내 용 </td>
			<td><textarea name="content" rows="10" cols="60"></textarea></td>
		</tr>
		<tr>
			<td bgcolor="#9DC3E6" align="center"> 패스워드 </td>
			<td><input name="passwd" type="password" size="60" /></td>
	</tr>
	</table><br>
	<input name="reply" type="submit" value="등록하기" />
	<input type="reset" value="다시쓰기" /><br><br>
	</form><br><br>
	<a href="parents.jsp">
		<input type="button" width="70" height="30" value="목록" /></a>
	</center>
	
	<br><br><br><br><br><br><br>
	<footer>
		<div id="footer_main"></div>
	</footer>
<body>
<html>