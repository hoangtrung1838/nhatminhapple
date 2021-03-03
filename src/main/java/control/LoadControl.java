package control;

import dao.DAO;
import intity.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoadControl", value = "/loadProduct")
public class LoadControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String servletName = request.getServletPath().replace("/","");
        System.out.println(servletName);
        request.getSession().setAttribute("servletName",servletName);
        DAO dao = new DAO();
        Product product = dao.getProductByID(id);
        request.setAttribute("product",product);
        request.getRequestDispatcher("Edit.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
