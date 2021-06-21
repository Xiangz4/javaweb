package com.xxx.controller;

import com.xxx.JDBCUtils.JDBCutils;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Sign_in_Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().setAttribute("User_Session",req.getRequestedSessionId());
        //处理登录信息
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String sql = "select * from user_info where username = ? and password = ?";
        Connection conn = null;
        ResultSet rs = null;
        PreparedStatement pstmt = null;
        int i = 0;
        int is_admin = 0;
        try {
            conn = JDBCutils.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,username);
            pstmt.setString(2,password);
            rs = pstmt.executeQuery();
            while (rs.next()){
                is_admin = rs.getInt("is_admin");
                i++;
            }
            if(i == 0){
                //重定向回登录界面并提示用户输入的用户名或密码有误
                req.getSession().setAttribute("error","输入的用户名或密码有误");
                resp.sendRedirect("/sign_in.jsp");
            }
            else if(is_admin == 1){
                //重定向到管理员页面
                resp.sendRedirect("/jsp/admin_homepage.jsp");
            }
            else {
                resp.sendRedirect("/jsp/homepage.jsp");
            }

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCutils.releast(conn,pstmt);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
