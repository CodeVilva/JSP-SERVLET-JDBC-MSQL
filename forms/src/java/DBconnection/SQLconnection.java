/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBconnection;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author vilva
 */
public class SQLconnection {
    
    static Connection con;
    
    
    public static Connection getconnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gitprojects", "root", "root");
        } catch (Exception e) {
        }
        return con;
    }
}