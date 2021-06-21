package com.xxx.controller;

import com.xxx.JDBCUtils.JDBCutils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Sign_up_Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取用户输入的信息和用户名
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        Connection conn = null;
        PreparedStatement pstmt = null;
        String sql = "insert into User_info (username,password) values(?,?)";
        try {
            conn = JDBCutils.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,username);
            pstmt.setString(2,password);
            int i = pstmt.executeUpdate();
            if (i == 1) {
                //跳转到登录页面并提示注册成功
                req.getSession().setAttribute("success","注册成功");
                resp.sendRedirect("/sign_in.jsp");
            }
            //判断验证码
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
