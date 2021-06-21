package com.xxx.JDBCUtils;

import sun.plugin2.main.server.ResultHandler;

import java.sql.*;

public class JDBCutils {
    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Connection conn = null;
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaweb?useUnicode=true&useSSL=false&serverTimezone=GMT%2B8","root","xiangz744652089");
        return conn;
    }
    public static void releast(Connection conn,PreparedStatement stmt){
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if(stmt != null)
        {
            try{
                stmt.close();;
            }catch(Exception e){
                e.printStackTrace();
            }
        }
    }
}
