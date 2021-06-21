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
import java.util.List;

public class Add_cat extends HttpServlet {
    @SneakyThrows
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Connection conn = JDBCutils.getConnection();
        String sql = "insert into cat_info (breed,personality,resident,breed_id) values (?,?,?,?)";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        String breed = req.getParameter("breed");
        String personality = req.getParameter("personality");
        String resident = req.getParameter("resident");
        String breedID = req.getParameter("breedID");
        int breedid = Integer.parseInt(breedID);
        pstmt.setString(1,breed);
        pstmt.setString(2,personality);
        pstmt.setString(3,resident);
        pstmt.setInt(4,breedid);
        int i = pstmt.executeUpdate();
        if (i > 0 ) {
            req.getSession().setAttribute("success","添加信息成功");
        }
        String sql2 = "select * from cat_info";
        List<Cat_info> cat_infoList = GetAll.getall(sql2);
        req.getSession().setAttribute("list",cat_infoList);
        resp.sendRedirect("/jsp/allcat.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
