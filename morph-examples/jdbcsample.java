import java.sql.*;
import com.exasol.jdbc.*;

public class jdbcsample
{
    public static void main(String[] args)
    {
        try { Class.forName("com.exasol.jdbc.EXADriver");
    } catch (ClassNotFoundException e) { 
            e.printStackTrace();
    }
    Connection con=null; 
    Statement stmt=null; 
    try {
        con = DriverManager.getConnection( 
            "jdbc:exa:192.168.56.101:8563;schema=SYS",
            "sys", 
            "exasol"
            );
        stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM CAT"); 
        System.out.println("Schema SYS contains:"); 
        while(rs.next())
        {
            String str1 = rs.getString("TABLE_NAME"); 
            String str2 = rs.getString("TABLE_TYPE"); 
            System.out.println(str1 + ", " + str2);
        }
    } catch (SQLException e) { 
        e.printStackTrace();
    } finally {
        try {stmt.close();} catch (Exception e) {e.printStackTrace();} 
        try {con.close();} catch (Exception e) {e.printStackTrace();}
        }
    }
}