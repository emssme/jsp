<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri ="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*" %>
<%@ page import="ch03.Member" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EL & JSTL</title>
</head>
<body>
<%
    String name = "김보경";
    int age = 25;
    int num1=95; int num2=100; int num3=100;

    Member m1 = new Member();
    m1.setNo(1);
    m1.setId("kim");
    m1.setPw("1234");
    m1.setName("김보경");
    m1.setPoint(100);

    Member m2 = new Member();
    m2.setNo(2);
    m2.setId("lee");
    m2.setPw("4321");
    m2.setName("이보경");
    m2.setPoint(90);

    List<Member> lst = new ArrayList<>();
    lst.add(m1);
    lst.add(m2);

    request.setAttribute("name",name);
    request.setAttribute("age", age);
    request.setAttribute("num1",num1);
    request.setAttribute("num2",num2);
    request.setAttribute("num3", num3);
    request.setAttribute("m1", m1);
    request.setAttribute("m2", m2);
    request.setAttribute("lst",lst);
%>
<div class="container">
    <section class="page">
        <h2 class="title">표현식</h2>
        <div class="item_wrap">
            <p class="name">이름: <%=name %></p>
            <p class="name">나이: <%=age %></p>
            <p class="point">점수: <%=num1+num2+num3%></p>
            <hr>
            <h3>m1 출력</h3>
            <p>번호: <%=m1.getNo()%></p>
            <p>이름: <%=m1.getName()%></p>
            <p>아이디: <%=m1.getId()%></p>
            <p>비밀번호: <%=m1.getPw() %></p>
            <p>포인트: <%=m1.getPoint() %></p>
            <hr>
            <h3>m2 출력</h3>
            <p>번호: <%=m2. getNo() %></p>
            <p>이름: <%=m2.getName() %></p>
            <p>아이디: <%=m2.getId() %></p>
            <p>비밀번호: <%=m2.getPw() %></p>
            <p>포인트: <%=m2.getPoint() %></p>
            <hr>
            <h2>List 출력</h2>
            <%
                for(Member m : lst) {
            %>
            <p>번호: <%=m2. getNo() %></p>
            <p>이름: <%=m2.getName() %></p>
            <p>아이디: <%=m2.getId() %></p>
            <p>비밀번호: <%=m2.getPw() %></p>
            <p>포인트: <%=m2.getPoint() %></p>
            <% } %>
            <div class="item_wrap">
                <h3>표현어와 스크립트릿</h3>
                <p class="name">${name }</p>
                <p class="age">${age }</p>
                <p class="point">${num1+num2+num3 }</p>
                <hr>
                <h3>m1 출력</h3>
                <p>번호: ${m1.no }</p>
                <p>이름: ${m1.name}</p>
                <p>아이디: ${m1.id }</p>
                <p>비밀번호: ${m1.pw }</p>
                <p>포인트: ${m1.point }</p>
                <hr>
                <h3>m2 출력</h3>
                <p>번호: ${m2.no }</p>
                <p>이름: ${m2.name}</p>
                <p>아이디: ${m2.id }</p>
                <p>비밀번호: ${m2.pw }</p>
                <p>포인트: ${m2.point }</p>
                <hr>
                <h3>Lst와 출력</h3>
                <%
                    for( Member m : lst ){
                        pageContext.setAttribute("m",m);
                %>
                <p>번호: ${m.no }</p>
                <p>이름: ${m.name}</p>
                <p>아이디: ${m.id }</p>
                <p>비밀번호: ${m.pw }</p>
                <p>포인트: ${m.point }</p>
                <%
                    }
                %>
            </div>
            <div class="item_wrap">
                <h3>표현어와 태그 라이브러리</h3>
                <c:forEach var="m" items="${lst }" varStatus="status">
                    <p>번호: ${status.count }</p>
                    <p>번호: ${m.no }</p>
                    <p>이름: ${m.name}</p>
                    <p>아이디: ${m.id }</p>
                    <p>비밀번호: ${m.pw }</p>
                    <p>포인트: ${m.point }</p>
                </c:forEach>
                <c:set var="tot" value="${num1+num2+num3}"></c:set>
                <h4>총점: ${tot }</h4>
            </div>
        </div>
    </section>
</div>
</body>
</html>
