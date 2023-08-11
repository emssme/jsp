<%@ page import="java.util.Map" %>
<%@ page import="java.util.SimpleTimeZone" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri ="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EL(Expression Language) - 표현 언어</title>
</head>
<body>
<%
    //표현식 사용시에는 데이터변수로 저장하고 매개변수로 전달해야함
    String title = "배고파용";
    String[] contents = {"배고파1","배고파2","배고파3"};
    Map<String, String> map = new HashMap<>();
    map.put("집","가고싶다");
    map.put("집2","가고싶다2");
    map.put("집3","가고싶다3");

    //EL 사용 시에는 데이터를 넘기는 곳에서 setAttribute를 지정해야함.
    request.setAttribute("title", title);
    request.setAttribute("con", contents);
    request.setAttribute("jip",map);
%>

    <h2>표현식(Expression)</h2>
    <p><%=title %></p>
    <div class="cate">
        <%
            for(String s:contents){
        %>
        <p><%=s %></p>
        <%
            }
        %>
    </div>
    <p><%=map %></p>
    <!--표현식으로 전달할 경우-->
    <a href="test07.jsp?title=<%=title %>&kim=<%=contents %>&lee=<%=map %>"></a>
    <hr>
    <h2>표현 언어(Expression Language)</h2>
    <p>${title}</p>
    <c:forEach var="s" items="${con}">
        <p> ${s} </p>
    </c:forEach>
    <p> ${jip} </p>
<!--forward 문장을 기술하고 해당 문서가 화면에 로딩되고, 주소는 바뀌지 않고 전달 됨-->
<a href="test07.jsp"></a>
</body>
</html>
