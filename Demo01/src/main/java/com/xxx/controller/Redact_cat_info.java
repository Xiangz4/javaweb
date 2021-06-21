package com.xxx.controller;

import com.xxx.JDBCUtils.GetAll;
import com.xxx.JDBCUtils.JDBCutils;
import com.xxx.pojo.Cat_info;
import lombok.SneakyThrows;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Redact_cat_info extends HttpServlet {
    @SneakyThrows
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String sql = "select * from cat_info";
        List<Cat_info> cat_infoList = GetAll.getall(sql);
        //将list放进Session中
        req.getSession().setAttribute("list",cat_infoList);
        //重定向去显示界面
        resp.sendRedirect("/jsp/allcat.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
