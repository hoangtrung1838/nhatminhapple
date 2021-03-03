package control;

import dao.DAO;
import intity.Account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AccountManager", value = "/accountManager")
public class AccountManager extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DAO dao = new DAO();
        List<Account> list = dao.getAllAccount();
        String servletName = request.getServletPath().replace("/","");
        request.getSession().setAttribute("servletName",servletName);
        request.setAttribute("listAccount",list);
        request.getRequestDispatcher("AccountManager.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
