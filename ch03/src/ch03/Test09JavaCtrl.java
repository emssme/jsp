package ch03;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@WebServlet("/Test09JavaCtrl.do")
public class Test09JavaCtrl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] names = {"김보경","이보경","박보경","강보경"};

        ArrayList<String> lst1 = new ArrayList<>();
        lst1.add("김보경1");
        lst1.add("김보경2");
        lst1.add("김보경3");

        HashMap<String, String> map = new HashMap<>();
        map.put("name","김보경");
        map.put("age","25");
        map.put("height","185");
        map.put("hobby","sleep");

        List<Member> mList = new ArrayList<>();
        mList.add(new Member(1, "kim","1234","김보경",10000));
        mList.add(new Member(2, "lee","4321","이보경",1000));
        mList.add(new Member(3, "park","5678","박보경",100));

        request.setAttribute("names",names);
        request.setAttribute("lst1",lst1);
        request.setAttribute("map",map);
        request.setAttribute("mList",mList);

        RequestDispatcher view = request.getRequestDispatcher("test09.jsp");
        view.forward(request, response);

    }

}
