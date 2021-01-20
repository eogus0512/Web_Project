<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<title>수학의 달인</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="./index_layout.css" />	
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
	<script type="text/javascript" src="./nav_menu.js"></script>
</head>
<body id="body">
	<header>
		<div id="header_menu">	
			<div><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="./../index.jsp"><img src="./../img/header/menu2/logo.png"></a></div><br><br><br>
			<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="./../header/menu1/signup.jsp">수강신청</a></div>
			<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="./../header/menu1/bookinfo.jsp">교재정보</a></div>		
			<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="./../diary/index.jsp">시험정보</a></div>
			<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="./../header/menu1/parentssession.jsp">학부모마당</a></div>
			<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="./../header/menu1/E_learningsession.jsp">E - 러닝</a></div>			
		</div>
	</header>
	
	<br><hr color="#9DC3E6"> <br>

	<nav>
		<div id="nav_menu">
			<div>
				<div><a href="./section/jan.html" target="ifrm" class="normalMenu">Jan</a></div>
				<div><a href="./section/feb.html" target="ifrm" class="normalMenu">Feb</a></div>
				<div><a href="./section/march.html" target="ifrm" class="normalMenu">March</a></div>
				<div><a href="./section/april.html" target="ifrm" class="normalMenu">April</a></div>
				<div><a href="./section/may.html" target="ifrm" class="normalMenu">May</a></div>
				<div><a href="./section/jun.html" target="ifrm" class="normalMenu">Jun</a></div>
				<div><a href="./section/july.html" target="ifrm" class="normalMenu">July</a></div>
				<div><a href="./section/aug.html" target="ifrm" class="normalMenu">Aug</a></div>
				<div><a href="./section/sep.html" target="ifrm" class="normalMenu">Sep</a></div>
				<div><a href="./section/oct.html" target="ifrm" class="normalMenu">Oct</a></div>
				<div><a href="./section/nov.html" target="ifrm" class="normalMenu">Nov</a></div>
				<div><a href="./section/dec.html" target="ifrm" class="normalMenu">Dec</a></div>
			</div>	
		</div>
	</nav>

	<article>
		<section>
			<div id="section">
				<iframe id="ifrm" name="ifrm" width="100%" height="600px" src="./section/home.jsp"
					marginwidth="0px" marginheight="0px" frameborder="no"></iframe>
			</div>
		</section>
	</article>

	<footer>
		<div id="footer">
			<center>
				<input type="button" value="일정등록" style="width: 300px; height: 50px; font-size:20px;" 
				onclick="window.open('./alter.jsp','','resizable=no width=380 height=600')">
			</center>
		</div><br><br>
		<div id="footer_main"></div>
	</footer>
</body>
</html>