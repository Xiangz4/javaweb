package com.xxx.controller;

import com.xxx.JDBCUtils.JDBCutils;
import lombok.SneakyThrows;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Cat_detail extends HttpServlet {
    @SneakyThrows
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String breed = req.getParameter("breed");
        System.out.println(breed);
        req.getSession().setAttribute("detail",breed);
        Connection conn = JDBCutils.getConnection();
        String sql = "select * from cat_info where breed = ?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,breed);
        ResultSet rs = pstmt.executeQuery();
        String resident = "";
        while(rs.next()){
             resident = rs.getString("resident");
        }
        System.out.println(resident);
        req.getSession().setAttribute("resident",resident);
        req.getSession().setAttribute("breed",breed);
        resp.sendRedirect("/jsp/detail.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
