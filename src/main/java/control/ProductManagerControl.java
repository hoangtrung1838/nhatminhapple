package control;

import dao.DAO;
import intity.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductManagerControl", value = "/productManager")
public class ProductManagerControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DAO dao = new DAO();

        List<Product> list = dao.getAllProduct();
        String servletName = request.getServletPath().replace("/","");
        System.out.println(servletName);
//        String amount= request.getParameter("amount");
//        request.setAttribute("amount",amount);
//        request.setAttribute("amount2",4);
        request.getSession().setAttribute("servletName",servletName);
        request.setAttribute("listAll",list);
        request.getRequestDispatcher("ProductManager.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
