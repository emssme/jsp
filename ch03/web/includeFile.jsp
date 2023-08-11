<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
  String name = (String) pageContext.getAttribute("name");
  String age = (String) pageContext.getAttribute("age");
%>
<div class="infile">
    <h1>includeFile.jsp</h1>
    <div class="dataatrea">
        <p>Name: <%=name%></p>
        <p>Age: <%=age %></p>
        <p>비 그치면 좋겠다.</p>
    </div>
</div>