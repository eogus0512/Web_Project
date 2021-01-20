<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>일정등록</title>
    <link rel="stylesheet" href="../res/api.css">
</head>
<body onload="showAll()">
<hr>
날짜: <br><input id="k" type="date"><br><br>
메모: <br><textarea id="v" cols="50" rows="20"></textarea>
<br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" value="저장" onclick="saveItem()" />
<input type="button" value="삭제" onclick="removeItem()" />



<hr><br>
일정: <br>
<select id="entries" size="2" onchange="onEntrySelected()"> </select>

<script type="text/javascript"> 
    var MyStorage = window.localStorage;
 
    if (!MyStorage) {
        alert("로컬스토리지를 지원하지 않습니다.");
    }
 
    var key = document.getElementById("k");
    var value = document.getElementById("v");
    var entries = document.getElementById("entries");
 
    // 스토리지 내용 모두 표시
    function showAll() {
        // 목록 clear
        entries.innerHTML = "";
 
        // 루프, 스토리지 내용 확인
        for ( var i = 0; i < MyStorage.length ; i++ ) {
            var k = MyStorage.key(i);
            entries.options[entries.options.length] = new Option(k + ":" + MyStorage[k], k);
        }
    }
 
    // 스토리지에 저장
    function saveItem() {
        MyStorage.setItem(key.value, value.value);
        showAll();
    }
 
    // 스토리지로부터 값을 삭제
    function removeItem() {
        MyStorage.removeItem(key.value);
        showAll();
    }
 
    // 선택된 엔트리를 텍스트 필드에 표시
    function onEntrySelected() {
        var selectedOption = entries.options[entries.selectedIndex];
        key.value = selectedOption.value;
        value.value = MyStorage.getItem(selectedOption.value);
    }
</script>
</body>
</html>

