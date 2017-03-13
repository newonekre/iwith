package com.iwith.service;

import com.iwith.entity.Customer;
import com.iwith.entity.Seller;
//import com.iwith.entity.VIP;
import com.iwith.exception.VGBException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.*;
//import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

public class CustomerDAO {

//    private static final String driver = "com.mysql.jdbc.Driver";
//    private static final String url = "jdbc:mysql://localhost:3306/vgb?zeroDateTimeBehavior=convertToNull";
//    private static final String userid = "root";
//    private static final String password = "1234";
    private static final String INSERT_SQL = "INSERT INTO customers "
            +//+號前有一空白防連在一起
            "(id,email,name,password,gender,"
            + "phone,points,interest,birthday,height,weight,location,type,price) "
            + " VALUES(?,?,?,?, ?,?,?,?, ?,?,?,? ,?,?)";

    public void insert(Customer c) throws VGBException {//新增 註冊
        if (c == null) {
            throw new java.lang.IllegalArgumentException("客戶名稱不得為null");
        }

        try (
                Connection connection = RDBConnection.getConnection();//1.建立連線
                PreparedStatement pstmt = connection.prepareStatement(INSERT_SQL); //2.準備指令       
                ) {
            //3.傳入sql指令的參數值
            pstmt.setInt(1, c.getId());
            pstmt.setString(2, c.getEmail());
            pstmt.setString(3, c.getName());
            pstmt.setString(4, c.getPassword());
            pstmt.setString(5, String.valueOf(c.getGender()));//字元變字串
            pstmt.setString(6, c.getPhone());
            pstmt.setInt(7, c.getPoints());
            pstmt.setString(8, c.getInterest());

            if (c.getBirthday() != null) {
                pstmt.setDate(9, new java.sql.Date(c.getBirthday().getTime()));//java Date 轉換成資料庫的Date
            } else {
                pstmt.setDate(9, null);//第9參數有2種情況
            }
            pstmt.setInt(10, c.getHeight());
            pstmt.setInt(11, c.getWeight());
            pstmt.setString(12, c.getLocation());
//            pstmt.setInt(13, c.getAge());

            pstmt.setString(13, c.getClass().getSimpleName());//SimpleName= 不含package 名等 只含類別名

            if (c instanceof Seller) {
                pstmt.setInt(14, ((Seller) c).getPrice());//第15參數有2種情況
            } else {
                pstmt.setInt(14, 0);
            }
//            if (c instanceof Seller) {
//                pstmt.setInt(15, ((Seller) c).getRatingGood());
//            } else {
//                pstmt.setInt(15, 0);
//            }
//            if (c instanceof Seller) {
//                pstmt.setInt(16, ((Seller) c).getRatingBad());
//            } else {
//                pstmt.setInt(16, 0);
//            }

            //4.執行指令
            pstmt.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, "客戶新增失敗!", ex);
            throw new VGBException("客戶新增失敗!", ex);
        }
    }
//    id,email,name,password,gender,phone,
//            points,interest,birthday,height,weight,location,type,price"
    private static final String UPDATE_SQL = "UPDATE customers " 
            + "SET id=?, name=?, password=?, "
            + "gender=?, phone=?, points=?, interest=?, birthday=?, height=?, weight=?, location=?, type=?, price=? "
            + "WHERE email=?";//id是條件 不在SET中不給改

    public void update(Customer c) throws VGBException {
        //修改客戶資料
        if(c==null){
            throw new java.lang.IllegalArgumentException("修改客戶不得為null");
        }
        try (Connection connection = RDBConnection.getConnection();//建立連線
                PreparedStatement pstmt = connection.prepareStatement(UPDATE_SQL);//準備指令
                ) {

            //3.傳入指令的參數
            pstmt.setInt(1, c.getId());
            pstmt.setString(2, c.getName());
            pstmt.setString(3, c.getPassword());
            pstmt.setString(4, String.valueOf(c.getGender()));//字元變字串
            pstmt.setString(5, c.getPhone());
            pstmt.setInt(6, c.getPoints());
            pstmt.setString(7, c.getInterest());

            if (c.getBirthday() != null) {
                pstmt.setDate(8, new java.sql.Date(c.getBirthday().getTime()));//java Date 轉換成資料庫的Date
            } else {
                pstmt.setDate(8, null);
            }
            pstmt.setInt(9, c.getHeight());
            pstmt.setInt(10, c.getWeight());
            pstmt.setString(11, c.getLocation());
//            pstmt.setInt(13, c.getAge());

            pstmt.setString(12, c.getClass().getSimpleName());//SimpleName= 不含package 名等 只含類別名

            if (c instanceof Seller) {
                pstmt.setInt(13, ((Seller) c).getPrice());
            } else {
                pstmt.setInt(13, 0);
            }
            pstmt.setString(14, c.getEmail());

            //4.執行指令
            pstmt.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, "客戶修改失敗!", ex);
            throw new VGBException("客戶修改失敗!", ex);
        }

    }

    public Customer get(String email) throws VGBException {
        if (email == null) {
            throw new java.lang.IllegalArgumentException("查詢客戶時email不得為null");
        }
        //2.建立連線connection
        try (Connection connection = RDBConnection.getConnection();
                //url泛指遠端繼承通訊協定
                //重資料讀資料並建立資料
                PreparedStatement pstmt = connection.prepareStatement("SELECT * FROM customers WHERE email=?");) {
            pstmt.setString(1, email);
           try(ResultSet rs = pstmt.executeQuery();){
            Customer c = null;
            while (rs.next()) {
                String type = rs.getString("type");
//                  if(type.equals(VIP.class.getSimpleName())){}
                if ("Seller".equals(type)) {
                    c = new Seller();
                } else {
                    c = new Customer();
                }
//                        String idData = rs.getString("id");
//                        c.setId(idData);
//    id,email,name,password,gender,phone,
//            points,interest,birthday,height,weight,location,type,price"

                c.setId(rs.getInt("id"));
                c.setEmail(rs.getString("email"));
                c.setName(rs.getString("name"));
                c.setPassword(rs.getString("password"));
//                  c.setGender((Character) rs.getObject("gender"));
                c.setGender(rs.getString("gender").charAt(0));
                c.setPhone(rs.getString("phone"));
                c.setPoints(rs.getInt("points"));
                c.setInterest(rs.getString("interest"));
                c.setBirthday(rs.getDate("birthday"));
                c.setHeight(rs.getInt("height"));
                c.setWeight(rs.getInt("weight"));
                c.setLocation(rs.getString("location"));
                
                if (c instanceof Seller) {
                    ((Seller) c).setPrice(rs.getInt("price"));
                }
//                    System.out.println("c=" + c);
            }
            return c;
           }
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, "無法查詢客戶！", ex);
            throw new VGBException("無法查詢客戶", ex);
        }
    }

    //    id,email,name,password,gender,phone,
//            points,interest,birthday,height,weight,location,type,price"
    
    private static final String SELECT_CUSTOMERS_BY_NAME
            = "SELECT id,email,name,password,gender,"
            + "phone,points,interest,birthday,height,weight,location,type,price"
            + " FROM customers "
            + "WHERE name LIKE?";

    public List<Customer> getCustomerListByName(String name) throws VGBException {//list 轉陣列
        //管理人員使用

        List<Customer> list = new ArrayList<>();
        //1.載入mysql db
//            Class.forName(driver);
        //2.建立連線
        try (
                Connection connection = RDBConnection.getConnection();
                //3.準備指令 
                PreparedStatement pstmt = connection.prepareStatement(SELECT_CUSTOMERS_BY_NAME);) {
            pstmt.setString(1, name + '%');//資料庫萬用字元%
            //4.執行指令
            try (ResultSet rs = pstmt.executeQuery()) {
                //5.處理ResultSet
                while (rs.next()) {
                    Customer c = null;
                    String type = rs.getString("type");
                    if ("Seller".equals(type)) {
                        c = new Seller();

                    } else {
                        c = new Customer();
                    }
                c.setId(rs.getInt("id"));
                c.setEmail(rs.getString("email"));
                c.setName(rs.getString("name"));
                c.setPassword(rs.getString("password"));
//                  c.setGender((Character) rs.getObject("gender"));
                c.setGender(rs.getString("gender").charAt(0));
                c.setPhone(rs.getString("phone"));
                c.setPoints(rs.getInt("points"));
                c.setInterest(rs.getString("interest"));
                c.setBirthday(rs.getDate("birthday"));
                c.setHeight(rs.getInt("height"));
                c.setWeight(rs.getInt("weight"));
                c.setLocation(rs.getString("location"));
                
                if (c instanceof Seller) {
                    ((Seller) c).setPrice(rs.getInt("price"));
                }
                    list.add(c);
                }
                return list;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, "無法用客戶姓名查詢!", ex);
            throw new VGBException("無法用客戶姓名查詢!", ex);
        }
    }
}
