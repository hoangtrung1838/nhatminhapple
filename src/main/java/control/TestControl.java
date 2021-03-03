package control;

import dao.DAO;
import intity.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "TestControl", value = "/test")
public class TestControl extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cateID = request.getParameter("cid");
        DAO dao = new DAO();
        List<Product> list= dao.getAllProductByCateID(cateID);
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        for (Product p : list){
            out.println("                    <div class=\"product col-6 col-lg-3 col-md-6 mb-4\">\n" +
                    "\n" +
                    "                        <!--Card-->\n" +
                    "                        <div class=\"card\">\n" +
                    "\n" +
                    "                            <!--Card image-->\n" +
                    "                            <div class=\"view overlay\">\n" +
                    "                                <a href=\""+p.getImage()+"\">\n" +
                    "                                    <img src=\""+p.getImage()+"\" class=\"card-img-top\" alt=\"\">\n" +
                    "                                    <strong>\n" +
                    "                                            <span class=\" "+(p.getIsSale()==1?"":"modal fade")+"float-right text-right badge badge-pill bg-danger \">\n" +
                    "                                                <h6> Sale</h6>\n" +
                    "                                            </span>\n" +
                    "\n" +
                    "                                            <span class=\" "+(p.getIsNew()==1?"":"modal fade")+" float-right text-right badge badge-pill bg-danger \">\n" +
                    "                                                <h6>Mới</h6>\n" +
                    "                                            </span>\n" +
                    "\n" +
                    "                                    </strong>\n" +
                    "\n" +
                    "                                    <div class=\"mask rgba-white-slight\"></div>\n" +
                    "                                </a>\n" +
                    "                            </div>\n" +
                    "                            <!--Card image-->\n" +
                    "\n" +
                    "                            <!--Card content-->\n" +
                    "                            <div class=\"card-body text-center\">\n" +
                    "                                <!--Category & Title-->\n" +
                    "                                <h5>\n" +
                    "                                    <strong>\n" +
                    "                                        <a methods=\"post\" href=\"detail?name="+p.getName()+"\" class=\"text-dark\">"+ p.getName()+"\n" +
                    "                                        </a>\n" +
                    "                                    </strong>\n" +
                    "                                </h5>\n" +
                    "\n" +
                    "                                <h4 class=\"font-weight-bold text-primary\">\n" +
                    "                                    <strong>"+(p.getPrice()/1000000)+"00.000đ</strong>\n" +
                    "                                </h4>\n" +
                    "\n" +
                    "                            </div>\n" +
                    "                            <!--Card content-->\n" +
                    "\n" +
                    "                        </div>\n" +
                    "                        <!--Card-->\n" +
                    "\n" +
                    "                    </div>");

        }
    }
}
