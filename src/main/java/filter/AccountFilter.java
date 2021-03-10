package filter;

import intity.Account;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class AccountFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        Object acc = request.getSession().getAttribute("acc");
        if (acc instanceof Account){
            if (((Account) acc).getIsAdmin()==1){
                filterChain.doFilter(request,servletResponse);
            }
        }
    }

    @Override
    public void destroy() {

    }
}
