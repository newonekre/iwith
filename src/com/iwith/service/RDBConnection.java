

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.iwith.service;
import com.iwith.exception.VGBException;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Administrator
 */

public class RDBConnection {//連線設定單獨拿出來寫
    private static final String driver = "com.mysql.jdbc.Driver";
    private static final String url = "jdbc:mysql://localhost:3306/iwith?zeroDateTimeBehavior=convertToNull";                                    
    private static final String userid = "root";
    private static final String password = "teamkm*310789";
    
    public static Connection getConnection() throws VGBException {
        try {
            //1.載入Driver
            Class.forName(driver);                           
            try {
                 //2.建立連線並回傳
               Connection connection = DriverManager.getConnection(url,userid,password);
               return connection;
            } catch (SQLException ex) {
                Logger.getLogger(RDBConnection.class.getName()).log(Level.SEVERE, "無法建立連線", ex);
                throw new VGBException("無法建立連線",ex);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RDBConnection.class.getName()).log(Level.SEVERE, "無法載入"+driver, ex);
            throw new VGBException("無法載入"+driver,ex);
        }
    }
}
