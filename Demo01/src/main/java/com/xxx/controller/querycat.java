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

public class querycat extends HttpServlet {
    @SneakyThrows
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String cat_breed = req.getParameter("cat_breed");
        String sql = "select * from cat_info where breed = ?";
        List<Cat_info> cat_infoList = GetAll.getall(sql, cat_breed);
        if (cat_infoList.size()==0){
            System.out.println("ceshi");
            req.getSession().setAttribute("error","没有查询到数据");
            resp.sendRedirect("Redact_cat_info");
        }else {
            req.getSession().setAttribute("list",cat_infoList);
            resp.sendRedirect("/jsp/allcat.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
