<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>파일을 포함시키기</title>
    <%
        pageContext.setAttribute("name","김보경");
        pageContext.setAttribute("age","25");
    %>
</head>
<body>
    <h2 class="title">include directive</h2>
    <div class="container">
        <%@ include file="includeFile.jsp"%>
    </div>
    <h2 class="title">include action tag</h2>
    <div class="container">
        <!--액션 태그의 include는 데이터 바인딩이 되지 않고, include가 됨(내용만 include 할 경우 필요)-->
        <jsp:include page="includeFile.jsp"></jsp:include>
    </div>
</body>
</html>
