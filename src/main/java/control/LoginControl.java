package control;

import dao.DAO;
import intity.Account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginControl", value = "/login")
public class LoginControl extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int flag =0;
        DAO dao = new DAO();
        String allAccount = dao.getAccountName();
        request.setAttribute("allAccName",allAccount);
        request.setAttribute("flag",flag);
        request.getRequestDispatcher("Login.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String inputName  = request.getParameter("inputName");
        String inputPass = request.getParameter("inputPass");
        Object beforeServletName = request.getSession().getAttribute("servletName");
        int flag =0;
        DAO dao = new DAO();
        Account account = dao.getAccount(inputName,inputPass);
        if (account==null){
            flag=1;
            request.setAttribute("inputName",inputName);
            request.setAttribute("flag",flag);
            request.getRequestDispatcher("Login.jsp").forward(request,response);
        }else {
            HttpSession session = request.getSession();
            session.setAttribute("acc",account);
            response.sendRedirect((String)beforeServletName);
        }
    }
}
