package com.xxx.controller;

import com.xxx.JDBCUtils.GetAll;
import lombok.SneakyThrows;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class update extends HttpServlet {
    @SneakyThrows
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = (String)req.getSession().getAttribute("breedID");
        int breedID = Integer.parseInt(id);
        String cat_breed = req.getParameter("cat_breed");
        String cat_personality = req.getParameter("cat_personality");
        String resident = req.getParameter("resident");
        System.out.println(breedID);
        System.out.println(cat_breed);
        System.out.println(cat_personality);
        System.out.println(resident);
        String sql = "update cat_info set breed = ?,personality =?,resident = ? where breed_id = ?";
        int i = GetAll.update(sql,breedID,cat_breed,cat_personality,resident);
        resp.sendRedirect("/Redact_cat_info");



    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
