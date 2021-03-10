package control;

import dao.DAO;
import intity.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DetailImageControl", value = "/detailImg")
public class DetailImageControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("pID");
        DAO dao = new DAO();
        Product product = dao.getProductByID(id);
        System.out.println(product);
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.println(" <div id=\"show\" class=\"text-center\">\n" +
                "<img src=\""+product.getImage()+"\" class=\"img-fluid\" alt=\"\">\n" +
                "<h1>"+product.getName()+"</h1>\n" +
                "</div>");
    }
}
