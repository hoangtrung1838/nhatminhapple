package control;

import dao.DAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddControl", value = "/add")
public class AddControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DAO dao = new DAO();
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String memory =request.getParameter("memory");
        String color = request.getParameter("color");
        String image = request.getParameter("image");
        String price = request.getParameter("price");
        String title = request.getParameter("title");
        String category = request.getParameter("category");
        String isNew = request.getParameter("isNew");
        String isSale = request.getParameter("isSale");
        String amount = request.getParameter("amount");
        dao.addNewProduct(name,memory,color,image,price,title,category,isNew,isSale,amount);
        response.sendRedirect("productManager");
    }
}
