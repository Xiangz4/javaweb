package com.xxx.Filter;

import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

//用来保护程序，防止跳过登录从url地址栏中直接访问程序
public class security_Filter implements Filter {
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;

        if (request.getSession().getAttribute("User_Session") == null){
            //重定向回登录页面
//            response.sendRedirect("/sign_in.jsp");
            ((HttpServletRequest) req).getSession().setAttribute("Error","请先登录");
            request.getRequestDispatcher("/sign_in.jsp").forward(request,response);
        }

        filterChain.doFilter(req,resp);

    }

    public void destroy() {

    }
}
