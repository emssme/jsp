<%@ page import="java.util.Enumeration" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>헤더 정보 출력하기</title>
    <%
        request.setCharacterEncoding("UTF-8");
        String msg = request.getParameter("msg");
    %>
</head>
<body>
<div class="container">
    <h2 class="title">요청 정보 및 헤더 정보 출력하기</h2>
    <hr>
    <ul class="list">
        <li><span>메시지</span> : <strong><%=msg %></strong></li>
        <li><span>프로토콜</span> : <strong></strong<%=request.getProtocol()%>></li>
        <li><span>요청된 서버 이름</span> : <strong></strong><%=request.getServerName()%></li>
        <li><span>요청방식</span> : <strong></strong><%=request.getMethod() %></li>
        <li><span>파라미터열</span><strong> : </strong><%=request.getQueryString() %></li>
        <li><span>요청주소</span><strong> : </strong><%=request.getRequestURL() %></li>
        <li><span>요청URI</span><strong> : </strong><%=request.getRequestURI() %></li>
        <li><span>서버이름</span><strong> : </strong><%=request.getRemoteHost() %></li>
        <li><span>서버주소</span><strong> : </strong><%=request.getRemoteAddr() %></li>
        <li><span>서버포트(원격)</span><strong> : </strong><%=request.getRemotePort() %></li>
        <li><span>서버포트(지역)</span><strong> : </strong><%=request.getServerPort() %></li>
        <li><span>현재 문서의 경로</span><strong> : </strong><%=request.getContextPath() %></li>
        <li><span>헤더의 어셉트</span><strong> : </strong><%=request.getHeader("Accept") %></li>
        <li><span>헤더의 호스트</span><strong> : </strong><%=request.getHeader("host") %></li>
    </ul>
    <hr>
    <table class="table" id="th1">
        <caption><h2>헤더 정보</h2></caption>
        <tbody>
        <%
            Enumeration e = request.getHeaderNames();
            while (e.hasMoreElements()){
                String hdName = (String) e.nextElement();

             %>
        <tr>
            <td><%=hdName %></td>
            <td><%=request.getHeader(hdName) %></td>
        </tr>
        <% } %>
        </tbody>
    </table>
    <hr>
    <p>정보: <%=request.getParameter("id") %></p>
</div>
</body>
</html>