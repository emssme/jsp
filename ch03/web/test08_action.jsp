<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EL Data Receive(표현언어 폼 데이터 받기)</title>
    <%
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String pageName = (String) pageContext.getAttribute("pname");
        String reqName = (String) request.getAttribute("rname");
        String sesName = (String) session.getAttribute("sname");
        String appName = (String) application.getAttribute("aname");

        String id1 = request.getParameter("id");
        String[] hobby= {"선택안함","선택안함","선택안함","선택안함","선택안함"};
        hobby = request.getParameterValues("hobby");
    %>
</head>
<body>
    <h2>Scope EL Output</h2>
    <p><%=pageName%> : ${pname}</p>
    <p><%=reqName%> : ${rname}</p>
    <p><%=sesName%> : ${sname}</p>
    <p><%=appName%> : ${aname}</p>
    <p><%=id1%> : ${param.id}</p>
    <hr>
    <h3>좋아하는 스포츠</h3>
    <ul>
        <li>첫번째 - <%=hobby[0]%> : ${paramValues.hobby[0]}</li>
        <li>두번째 - <%=hobby[1]%> : ${paramValues.hobby[1]}</li>
    </ul>
</body>
</html>
