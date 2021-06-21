package com.xxx.controller;

import com.xxx.JDBCUtils.GetAll;
import com.xxx.pojo.Cat_info;
import lombok.SneakyThrows;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

public class delete_cat extends HttpServlet {
    @SneakyThrows
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String breeid = req.getParameter("breeid");
        String sql = "delete from cat_info where breed_id = ?";
        int breeID = Integer.parseInt(breeid);
        GetAll.getall(sql, breeID);
        resp.sendRedirect("/Redact_cat_info");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
