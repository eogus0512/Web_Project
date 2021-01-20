<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>회원가입</title>
	<meta charset="UTF-8">
	<style type="text/css">
		nav > div
		{
			background-color: #9DC3E6;
			height: 50px;
		}

		#join_info > .join_info_1
		{
			margin: 20px;
			font-size: 30px;
			font-weight: bold;
			color: #9DC3E6;
			
		}

		#join_info > .join_info_2
		{
			margin-top: 50px;
			margin-left: 20px;
			margin-bottom: 20px;

			font-size: 20px;
			font-weight: bold;
			color: #9DC3E6;
		}

		#join_info > ul > li
		{
			font-size: 12px;
		}

		#box01
		{
			width: 800px;
			height: 300px;
			font-size: 12px;
		}

		th
		{
			width: 180px;
			height: 40px;
			font-size: 12px;
			color: white;
			background-color: #9DC3E6;
		}

		td
		{
			font-size: 12px;
			background-color: #EFEFEF;
			border-color: black;
		}
		#joinsubmit
		{
			padding: 40px 100px; 
			border: none;
			background: #9DC3E6; 
			font-size: 30px;
			font-weight: bold;
			color: white; 
			text-align: left; 
			vertical-align:middle;
			overflow:visible;
		}

	</style>
</head>
<body>
	<header>
		<div><a href="./join.jsp"><img src="./../../img/header/menu2/logo.png"></a></div>
	</header>

	<article>

		<section id="join_info">
			<div class="join_info_1">회원가입</div>
			<hr>
		<form name="joinform" action="joinprocess.jsp" method="post">
			<div class="join_info_2"> 회원 이용약관</div>
			<div><iframe src="./agree1.jsp" width="800px" height="300px"></iframe></div>
			<div><input type="checkbox" id="agreecheck1" name="agreecheck1" value="yes"><label for="agreecheck1">회원 이용약관에 동의합니다.</label></div><br><br>

			<div class="join_info_2"> 개인정보 수집 및 이용 동의</div>
			<div><iframe src="./agree2.jsp" width="800px" height="300px"></iframe></div>
			<div><input type="checkbox" id="agreecheck2" name="agreecheck2" value="yes"><label for="agreecheck2">개인정보 수집 및 이용에 동의 합니다.</label></div>
			<br><br><br>
			<hr>
			<div class="join_info_2"> 회원정보 필수항목</div>
			

			<table>
				<tbody>
                <tr>
                    <th scope="row">이름</th>
                    <td colspan="2"><input type="text" name="name" id="name" required/></td>
                </tr>
                <tr>
                    <th scope="row">아이디</th>
                    <td colspan="2"><input type="text" name="id" id="id" required/></td>
                </tr>
                <tr>
                    <th scope="row">비밀번호</th>
                    <td><input type="password" name="passwd" id="passwd" required/></td>
                    <td rowspan="2">
                        <div>
                            <ul>
                                <li>비밀번호는 4자 ~ 14자 사이의 영문과 숫자로 공백없이 입력하시면 됩니다.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
                            </ul>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th>비밀번호 확인</th>
                    <td><input type="password" id="passwd_re" required/></td>
                </tr>
               
                <tr>
                    <th scope="row">생년월일</th>
                    <td colspan="2">
                    	<input type="text" size="5" name="yy" id="yy" required/>년  
                    	<input type="text" size="5" name="mm" id="mm" required/>월  
                    	<input type="text" size="5" name="dd" id="dd" required/>일
                    </td>
                </tr>
                <tr>
                    <th scope="row">성별</th>
                    <td colspan="2">
                    	<label for="m">남성</label><input type="radio" id="m" name="gender" value="m"/> 
                    	<label for="fm">여성</label><input type="radio" id="fm" name="gender" value="f" /> 
                    </td>
                </tr>
                 
                <tr>
                    <th scope="row">휴대폰 번호</th>
                    <td colspan="2">
                        <select name="tel_mobile1" id="tel_mobile1" required>
                            <option value="">+ 선택</option>
                            <option value='010'>010</option>
							<option value='011'>011</option>
							<option value='016'>016</option>
							<option value='017'>017</option>
							<option value='018'>018</option>
							<option value='019'>019</option>
							<option value='013'>013</option>
                        </select>

                        <input type="text" name="tel_mobile2" id="tel_mobile2" style="ime-mode:disabled;width:54px;" maxlength="4" value="" />&nbsp;-&nbsp;
                        <input type="text" name="tel_mobile3" id="tel_mobile3" style="ime-mode:disabled;width:54px;" maxlength="4" value="" />
                    </td>
                </tr>

                <tr>
                    <th scope="row">이메일</th>
                    <td colspan="2">
                        <input type="text" name="email1" hname="메일" required value="" /> @ <input type="text" name="email2" hname="메일" required value="" />
                    </td>
                </tr>
                
                </tbody>
            </table>
            <br><br><br>

            <div class="join_info_2"> 회원정보 선택항목</div>
			<table>
				<tbody>
					<tr>
	                    <th scope="row">영문이름</th>
	                    <td colspan="2"><input type="text" name="ename" id="ename" style="ime-mode:disabled;width:220px"/></td>
	                </tr>
	                <tr>
	                    <th scope="row">우편번호</th>
	                    <td colspan="2">
	                        <input type="text" maxlength="3" name="zipcode1" id="zipcode1" style="width:55px" value=""/>&nbsp;&nbsp;
	                        <input type="text" maxlength="3" name="zipcode2" id="zipcode2" style="width:55px" value=" "/>&nbsp;&nbsp;
	                      
	                    </td>
	                </tr>
	                <tr>
	                    <th scope="row">상세주소</th>
	                    <td colspan="2">
	                        <div>
	                            <ul>
	                                <li><input type="text" name="address1" id="address1" style="width:540px" value=" "/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
	                                <li><input type="text" name="address2" id="address2" style="width:220px" value=" "/></li>
	                            </ul>
	                        </div>
	                    </td>
	                </tr>
	                <tr>
	                    <th scope="row">직업</th>
	                    <td colspan="2">
	                        <input type="radio" name="job" id="j01" value="학생" title="학생"/>&nbsp;<label for="j01">학생</label>
	                        <input type="radio" name="job" id="j02" value="직장인" title="직장인"/>&nbsp;<label for="j02">학부모</label>
	                        <input type="radio" name="job" id="j04" value="기타" title="기타"/>&nbsp;<label for="j04">기타</label>
	                    </td>               
	                </tr>   
                </tbody>
			</table>
			<br><br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
			<input id="joinsubmit" type="submit" value="회원가입" width="200">
		</form>
			<br><br><br><br><br>
		</section>
	</article>
</body>
</html>

