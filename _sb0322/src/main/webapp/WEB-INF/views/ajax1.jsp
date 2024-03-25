<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>ajax</h1>
<select id="selectBox">
<option value="" selected disabled>선택</option>
<option value="list">list</option>
<option value="root">root</option>
<option value="root2">root2</option>
</select>
<div id="here"></div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
$(function() {
	$.ajax({
		url : '/', // 이곳으로 요청을 보냄
		method : 'GET', // GET 방식으로 
		success : function(data) { // 요청에 대한 서버의 응답을 data로 받음
			$('#here').html(data);// 응답이 없는 경우 실패로 간주
		}
	});
	
	$("#selectBox").//$는 jQuery의 선택자
	on("change", function(){// on 함수 = 요소의 값이 변경될 때 실행되는 핸들러 설정
		console.log($(this).val()); // $(this) = 이벤트가 발생한 객체, 선택자로 지정된 대상 
// => selectbox 요소의 값이 변경되면 변경된 값을 콘솔에 출력하는 핸들러 설정
		let sel = $(this).val();
		if (sel=='root') {
			$.ajax({
				url : '/',
				method : 'GET',
				success : function(data) {
					$('#here').html(data);
				}
			});
		} else if (sel == 'list') {
			$.ajax({
				url : '/list',
				method : 'GET',
				success : function(data) {
					$('#here').html(data);
				}
			});
		}
	});
});
</script>
</body>
</html>