package control;

import dao.DAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditControl", value = "/edit")
public class EditControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        DAO dao = new DAO();
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String memory = request.getParameter("memory");
        String color = request.getParameter("color");
        String image = request.getParameter("image");
        String price = request.getParameter("price");
        String title = request.getParameter("title");
        String categoryID = request.getParameter("category");
        String isNew = request.getParameter("isNew");
        String isSale = request.getParameter("isSale");
        String amount = request.getParameter("amount");
        dao.updateProduct(id,name,memory,color,image,price,title,categoryID,isNew,isSale,amount);
        response.sendRedirect("productManager");

    }
}
