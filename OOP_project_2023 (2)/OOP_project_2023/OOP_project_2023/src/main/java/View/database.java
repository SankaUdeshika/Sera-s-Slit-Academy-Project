/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package View;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class database {
    public static Connection mycon(){
    
    Connection con;
        con = null;
    
    try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/digitalapp","root","12345678");
            return con;

        }
            
        catch(ClassNotFoundException | SQLException ex){
            System.out.println(ex);
            return null;
        }
}
}
