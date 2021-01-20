<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
	<title>수학의 달인</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="./main_layout.css" />
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>	
	<script type="text/javascript" src="./header_slider.js"></script>
</head>

<body>
	<header>
		<div id="header_menu">	
			<div><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="./index.jsp"><img src="./img/header/menu2/logo.png"></a></div><br><br><br>
			<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="./header/menu1/signup.jsp">수강신청</a></div>
			<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="./header/menu1/bookinfo.jsp">교재정보</a></div>		
			<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="./diary/index.jsp">시험정보</a></div>
			<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="./header/menu1/parentssession.jsp">학부모마당</a></div>
			<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="./header/menu1/E_learningsession.jsp">E - 러닝</a></div>			
		</div>	
		
		<br><hr color="#9DC3E6"> <br>
		
		<div id="box1">
			<table>
				<tr>
					<td><img src="./img/header/menu2/teacher.png" width="90" height="120"></td>
					<td><font size="5">&nbsp;&nbsp;&nbsp;김정우</font></td>
					<td><font size="3">선생님</font></td>
				<tr>
			</table>
		</div>
		
		<div id="box2">
			<img src="./img/header/menu2/notice.png" width="110" height="30"><br>
			<p>고등학교 1학년 다음주 수요일 3시 보충수업 있습니다.</p>
		</div>
		
		<div id="box3">
			<table>
				<tr>
					<td colspan = "2" width="250px"><iframe src="./header/menu2/login.jsp" width="250px" height="150px" marginwidth="0px" marginheight="0px" frameborder="no"></iframe></td>
				</tr>
			</table>
		</div>
		
		<br><br><br><br><br><br><br><br><br>
		
		<div id="header_main">	
			<div id="header_slider">
				<div id="mosaic-slideshow">
			        <div class="arrow left"></div>
			        <div class="arrow right"></div>
			    </div>
			</div>	
		</div>
	</header>	



	<article>
		<section>
			<br><br><br><br>
				<table id="center">
					<tbody>
						<tr>
							<td colspan="2">
								<div class="center">
									<a href="./header/menu1/signup.jsp">
									<img src="./img/main/1-1.png" border="0" 
									onmouseover="this.src='./img/main/1-2.png'" 
									onmouseout="this.src='./img/main/1-1.png'"></a>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			<br><br><br><br>
		</section>
	</article>




	<footer>
		<div id="footer_main"></div>
	</footer>


</body>
</html>