package ch03;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/test18Ctrl.do")
public class test18Ctrl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String msg = "서블릿 데이터";
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        /*
        URL이동 - response
        response.sendRedirect("/test18.jsp?msg="+msg);
        */

        //out 객체를 생성해서 해당 태그를 출력하여 사이트 이동
        PrintWriter out;
        out.println("<a href='test18.jsp?msg='"+msg+">테스트18</a>");
    }

}
