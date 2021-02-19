package kz.javaee;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "ProlongingFilter")
public class ProlongingFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        chain.doFilter(req, resp);
        HttpSession session = ((HttpServletRequest) req).getSession(false);
        if (session != null) {
            String username = (String) session.getAttribute("username");
            if(username!=null){
                session.setMaxInactiveInterval(30*60);
            }
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
