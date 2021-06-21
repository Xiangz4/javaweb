import com.xxx.JDBCUtils.JDBCutils;
import org.junit.Test;

import java.sql.*;

public class test {
    @Test
    public void test() throws SQLException, ClassNotFoundException {
        Connection connection = JDBCutils.getConnection();
        String sql = "select * from user_info where username = ? and password = ? ";
        PreparedStatement pstmt = connection.prepareStatement(sql);
        pstmt.setString(1,"");
        pstmt.setString(2,"");
        ResultSet resultSet = pstmt.executeQuery();
        System.out.println(resultSet);
        System.out.println(resultSet.next());
        while (resultSet.next())
        {
            System.out.println(resultSet.getInt("is_admin"));
        }
    }
}
