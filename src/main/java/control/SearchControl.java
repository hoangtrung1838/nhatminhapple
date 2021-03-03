package control;

import dao.DAO;
import intity.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "SearchControl", value = "/search")
public class SearchControl extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String search = request.getParameter("search");
        DAO dao = new DAO();
        List<Product> list = dao.getAllProductByName(search) ;
        if (list.isEmpty()){
            request.setAttribute("listAll",list);
        }else {
            request.setAttribute("listAll",list);
        }
        request.getRequestDispatcher("Home.jsp").forward(request,response);
        System.out.println(search);
    }
}
