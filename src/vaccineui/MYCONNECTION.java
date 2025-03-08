/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package vaccineui;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;



/**
 *
 * 
 */
public class MYCONNECTION {
 
    private static final String URL = "jdbc:mysql://localhost:3306/miniproject";
    private static final String USER = "root";
    private static final String PASSWORD = "";

    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("MySQL JDBC Driver not found.");
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Failed to establish connection.");
        }
        return conn;
    }
}


   
       
   
   
   
   
   

   
   
   
    


    

 
