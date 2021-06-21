package com.xxx.JDBCUtils;

import com.xxx.pojo.Cat_info;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GetAll {
    public static List<Cat_info> getall(String sql) throws SQLException, ClassNotFoundException {
        Connection conn = JDBCutils.getConnection();
        PreparedStatement pstmt = null;
        pstmt = conn.prepareStatement(sql);
        ResultSet rs = pstmt.executeQuery();
        List<Cat_info> cat_infoList = new ArrayList<Cat_info>();
        while(rs.next()){
            Cat_info cat_info = new Cat_info(rs.getString("breed"),
                    rs.getString("personality"),
                    rs.getString("resident"),
                    rs.getInt("breed_id"));
            //将数据库中全部的信息存入到List中
            cat_infoList.add(cat_info);
        }
        return cat_infoList;
    }
    public static List<Cat_info> getall(String sql,String breed) throws SQLException, ClassNotFoundException {
        Connection conn = JDBCutils.getConnection();
        PreparedStatement pstmt = null;
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,breed);
        ResultSet rs = pstmt.executeQuery();
        List<Cat_info> cat_infoList = new ArrayList<Cat_info>();
        while(rs.next()){
            Cat_info cat_info = new Cat_info(rs.getString("breed"),
                    rs.getString("personality"),
                    rs.getString("resident"),
                    rs.getInt("breed_id"));
            //将数据库中全部的信息存入到List中
            cat_infoList.add(cat_info);
        }
        return cat_infoList;
    }
    public static void getall(String sql,int breed) throws SQLException, ClassNotFoundException {
        Connection conn = JDBCutils.getConnection();
        PreparedStatement pstmt = null;
        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1,breed);
        pstmt.executeUpdate();

    }
    public static int update(String sql,int breedID,String cat_breed,String cat_personality,String resident) throws SQLException, ClassNotFoundException {
        Connection conn = JDBCutils.getConnection();
        PreparedStatement pstmt = null;
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,cat_breed);
        pstmt.setString(2,cat_personality);
        pstmt.setString(3,resident);
        pstmt.setInt(4,breedID);
        int i = pstmt.executeUpdate();
        return i ;
    }


}
