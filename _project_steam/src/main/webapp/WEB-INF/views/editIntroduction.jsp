<%@ page language="java" contentType="text/html; charset=UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>소개</title>
  </head>
  <body>

    
    <form id="myForm" action="/submitIntroduction" method="post">
              <h2>detail</h2>
              <input type="hidden" name="num" value="${num}"/>
        <textarea name="detail" rows="40" cols="100"></textarea>
        <br />
              <h2>simple</h2>
        <textarea name="simple" rows="20" cols="100"></textarea>
        <button type="submit">제출</button>
        
    </form>
 <script>
    // detail과 simple 값이 null이 아닌 경우에만 실행됨
    document.addEventListener("DOMContentLoaded", function() {
        var closeSwitch = "${close}";
        if (closeSwitch === "true") {
        	alert("업데이트 완료");
            window.close();
        }
    });
</script>


   <script>
        // detail과 simple 값이 null이 아닌 경우에만 실행됨
        document.addEventListener("DOMContentLoaded", function() {
            // detail과 simple의 값이 null이 아닌 경우에만 해당 값을 textarea에 입력
            var detailValue = "${detail}";
            var simpleValue = "${simple}";
            document.getElementsByName("detail")[0].value = detailValue;
            document.getElementsByName("simple")[0].value = simpleValue;
        });
    </script>


  </body>
</html>
