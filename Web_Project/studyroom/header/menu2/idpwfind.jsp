<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <title>아이디 비밀번호 찾기</title>
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
            color: #353535;
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

        td
        {        
            height: 40px;
            font-size: 12px;
            align: center;
            background-color: #EFEFEF;
            border-color: black;            
        }

        .findtable
        {
            width: 400px;

        }

        .findok
        {
            padding: 10px 20px; 
            border: none;
            background: #9DC3E6; 
            font-size: 17px;
            color: white; 
            text-align: left; 
            vertical-align:middle;
            overflow:visible;
            height:100px;
        }

    </style>
</head>
<body>
    <header>
        <div><a href="./idpwfind.jsp"><img src="./../../img/header/menu2/logo.png"></a></div>
    </header>

    <article>
        <section id="join_info">
            <div class="join_info_1">아이디 찾기</div>
            <div>&nbsp;회원가입시 입력하신 휴대폰번호 또는 이메일 주소를<br>&nbsp;입력하시면 일치하는 아이디를 찾아드립니다</div>
            <hr>
            
            <div class="join_info_2"> 휴대폰번호로 찾기</div>
            <form action="idpwfind_id_phone.jsp" method="post">
            <table class="findtable">
                <tbody>
                    <tr>
                        <td colspan="3"></td>
                    </tr>
                    <tr>
                        <td>이름</td>
                        <td><input name="username" type="text" size="35" /></td>
                        <td rowspan="2"><input class="findok" type="submit" value="확인" /></td>
                    </tr>
                    <tr>
                        <td>휴대폰번호</td>
                        <td>
                            <input name="tel_mobile1" type="text" size="6" /> -
                            <input name="tel_mobile2" type="text" size="6" /> -
                            <input name="tel_mobile3" type="text" size="6" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3"></td>
                    </tr>
                </tbody>
            </table>
            </form>
			
            <div class="join_info_2"> 이메일로 찾기</div>
            <form action="idpwfind_id_mail.jsp" method="post">
            <table class="findtable">
                <tbody>
                    <tr>
                        <td colspan="3"></td>
                    </tr>
                    <tr>
                        <td>이름</td>
                        <td><input name="username" type="text" size="35" /></td>
                        <td rowspan="2"><input class="findok" type="submit" value="확인" /></td>
                    </tr>
                    <tr>
                        <td>이메일주소</td>
                        <td><input name="mail" type="text" size="35" /></td>
                    </tr>
                    <tr>
                        <td colspan="3"></td>
                    </tr>

                </tbody>
            </table>
            </form>
            <br><br><br><br><br>

            <div class="join_info_1">비밀번호 찾기</div>
            <div>&nbsp;
                회원가입시 입력하신 휴대폰번호 또는 이메일 주소를<br>&nbsp;입력하시면 일치하는 비밀번호를 찾아드립니다</div>
            <hr>
            
            <div class="join_info_2"> 휴대폰번호로 찾기</div>
            <form action="idpwfind_pw_phone.jsp" method="post">
            <table class="findtable">
                <tbody>
                    <tr>
                        <td colspan="3"></td>
                    </tr>
                    <tr>
                        <td>이름</td>
                        <td><input name="username" type="text" size="35" /></td>
                        <td rowspan="2"><input class="findok" type="submit" value="확인" /></td>
                    </tr>
                    <tr>
                        <td>휴대폰번호</td>
                        <td>
                            <input name="tel_mobile1" type="text" size="6" /> -
                            <input name="tel_mobile2" type="text" size="6" /> -
                            <input name="tel_mobile3" type="text" size="6" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3"></td>
                    </tr>
                </tbody>
            </table>
            </form>

            <div class="join_info_2"> 이메일로 찾기</div>
            <form action="idpwfind_pw_mail.jsp" method="post">
            <table class="findtable">
                <tbody>
                    <tr>
                        <td colspan="3"></td>
                    </tr>
                    <tr>
                        <td>이름</td>
                        <td><input name="username" type="text" size="35" /></td>
                        <td rowspan="2"><input class="findok" type="submit" value="확인" /></td>
                    </tr>
                    <tr>
                        <td>이메일주소</td>
                        <td><input name="mail" type="text" size="35" /></td>
                    </tr>
                    <tr>
                        <td colspan="3"></td>
                    </tr>

                </tbody>
            </table>
            </form>
            <br><br><br><br><br>

        </section>
    </article>

</body>
</html>