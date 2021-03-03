package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBContext {


    public static Connection getConnection(){
        final String url ="jdbc:mysql://localhost:3306/nhatminhapple";
        final String user ="root";
        final String password="123456789";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(url,user,password);
        } catch (ClassNotFoundException e) {
            System.out.println("Không tìm được class");;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public static void main(String[] args) {
        System.out.println(DBContext.getConnection());
    }
}
