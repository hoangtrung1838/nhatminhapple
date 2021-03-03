package control;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CheckOutControl", value = "/checkout")
public class CheckOutControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String servletName = request.getServletPath().replace("/","");
        System.out.println(servletName);
        request.getSession().setAttribute("servletName",servletName);
        request.getRequestDispatcher("CheckOut.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
