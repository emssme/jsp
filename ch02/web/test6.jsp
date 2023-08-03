<%
    //page(pageContext) 객체는 현재 페이지에서만 유효하다.
    //pageContext.setAttribute("pageData","페이지컨텍스트2");
    String req = (String) request.getParameter("reqData");
    String ses = (String) session.getAttribute("sesData");
    String app = (String) application.getAttribute("appData");
    String msg = (String) request.getParameter("msg");

%>
<ul class="list">
    <li>request: <%=req %></li>
    <li>session: <%=ses %></li>
    <li>application: <%=app %></li>
    <li>msg: <%=msg %></li>
</ul>
<p>
    <a href="test5.jsp">페이지6로 이동하기</a><br>
    <% if(ses!=null){ %>
    <a href="logout.jsp">로그아웃</a>
    <% } else { %>
    <a href="test4.jsp">로그인</a>
    <% } %>
</p>
</div>
</body>
</html>