<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EL Data Form(표현언어 데이터 폼 전송처리)</title>
    <%
        pageContext.setAttribute("pname","김보경");
        request.setAttribute("rname","이보경");
        session.setAttribute("sname","박보경");
        application.setAttribute("aname","강보경");
    %>
</head>
<body>
<div class="container">
    <h2>EL의 Form 데이터 전송</h2>
    <form action="test08_action.jsp" method="post">
        <table>
            <tr>
                <th><label for="id">아이디</label></th>
                <td><input type="text" name="id" id="id"></td>
            </tr>
            <tr>
                <th><label>스포츠</label></th>
                <td>
                    <p>좋아하는 스포츠를 선택하시오.</p>
                    <input type="checkbox" name="hobby" id="hobby1" value="축구"><lable for="hobby1">축구</lable>
                    <input type="checkbox" name="hobby" id="hobby2" value="야구"><lable for="hobby2">야구</lable>
                    <input type="checkbox" name="hobby" id="hobby3" value="농구"><lable for="hobby3">농구</lable>
                    <input type="checkbox" name="hobby" id="hobby4" value="배구"><lable for="hobby4">배구</lable>
                    <input type="checkbox" name="hobby" id="hobby5" value="테니스"><lable for="hobby5">테니스</lable>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="전송">
                    <input type="reset" value="취소">
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
