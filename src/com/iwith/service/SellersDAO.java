/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.iwith.service;


import com.iwith.entity.Gender;
import com.iwith.entity.Seller;
import com.iwith.exception.VGBException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Administrator
 */
public class SellersDAO implements DAOInterface {

    @Override
    public void insert(Seller s) throws VGBException {

    }

    @Override
    public void update(Seller s) throws VGBException {

    }

    @Override
    public void delete(Seller s) throws VGBException {

    }
//    private static final String SELECT_PRODUCT_BY_ID = "SELECT products.id, products.name, "
//            + "unit_price,stock,photo_url,description,discount,publishers.name AS publisher_name,auther_name,isbn,publish_date, "
//            + "products.type "
//            + "FROM products "
//            + "LEFT JOIN book_detail ON products.id = book_detail.product_id "
//            + "LEFT JOIN publishers ON book_detail.publisher_id = publishers.id "
//            + "WHERE products.id = ?";
//
//    @Override
//    public Seller get(int id) throws VGBException {
//        Seller s = null;
//        try (Connection connection = RDBConnection.getConnection();
//                PreparedStatement pstmt = connection.prepareStatement(SELECT_PRODUCT_BY_ID);) {
//            pstmt.setInt(1, id);
//
//            try (ResultSet rs = pstmt.executeQuery();) {
//                while (rs.next()) {
//                    String type = rs.getString("type");
//                    if (type != null && type.equals("Book")) {
//                        p = new Book();
//                    } else {
//                        p = new Product();
//                    }
//
//                    p.setId(rs.getInt("id"));
//                    p.setName(rs.getString("name"));
//                    p.setUnitPrice(rs.getDouble("unit_price"));
//                    p.setStock(rs.getInt("stock"));
//                    p.setPhotoUrl(rs.getString("photo_url"));
//                    p.setDescription(rs.getString("description"));
//                    if (p instanceof Book) {
//                        ((Book) p).setDiscount(rs.getInt("discount"));
//                        ((Book) p).setAutherName(rs.getString("auther_name"));
//                        ((Book) p).setPublishDate(rs.getDate("publish_date"));
//                        ((Book) p).setIsbn(rs.getString("isbn"));
//
//                        Publisher publisher = new Publisher();
//                        publisher.setName(rs.getString("publisher_name"));
//                        ((Book) p).setPublisher(publisher);
//
//                    }
//                }
//                return p;
//            }
//        } catch (SQLException ex) {
//            throw new VGBException("查詢產品失敗", ex);
//        }
//    }
//                                                   
    private static final String SELECT_SELLERS_BY_GENDER = "SELECT id, sellers.name, "
            + "price,interest,location,age,rating_good,rating_bad,birthday,gender "
//            + "sellers.gender "
            + "FROM sellers "
            + "WHERE gender=? ";

    public List<Seller> getSellersByGender(String gender) throws VGBException {
        List<Seller> list = new ArrayList<>();
        try (Connection connection = RDBConnection.getConnection();
                PreparedStatement pstmt = connection.prepareStatement(SELECT_SELLERS_BY_GENDER);) {
            pstmt.setString(1, gender);
            try (ResultSet rs = pstmt.executeQuery();) {
                while (rs.next()) {
                    Seller s = new Seller();
//                    String rsType = rs.getString("type");
                    
    //////////////////////////case1 靈活度高//////////////////////////////////////                
//                    String className = Seller.class.getName();//直接去抓類別名稱 有就用ex:Book 沒有出錯就用Product
//                    className = className.replaceAll(Seller.class.getSimpleName(), rsType);
//                try{
//                    s = (Seller) Class.forName(className).newInstance();
//                }catch(Exception ex){
//                    s = new Seller();
//                    
//                    //有錯就變成product
//                }
                ////////////////////case2 簡易//////////////////////
//                    if (rsType.equals("Book")) {
//                        p = new Book();
//                    } else {
//                        p = new Product();
//                    }

                    s.setId(rs.getInt("id"));
                    s.setName(rs.getString("name"));
                    s.setPrice(rs.getInt("price"));
                    s.setInterest(rs.getString("interest"));
                    s.setLocation(rs.getString("location"));


                    s.setRatingGood(rs.getInt("rating_good"));
                    s.setRatingBad(rs.getInt("rating_bad"));
                    
                    s.setBirthday(rs.getDate("birthday"));
                    s.setGender(rs.getString("gender").charAt(0));
                    
                    list.add(s);
                }
            }
        } catch (SQLException ex) {
            throw new VGBException("依據性別查詢賣家失敗", ex);
        }
        return list;
    }
    
    private static final String SELECT_SELLERS_BY_TYPE = "SELECT id, sellers.name, "
            + "price,interest,location,age,rating_good,rating_bad,gender,birthday,type "
//            + "sellers.gender "
            + "FROM sellers "
            + "WHERE type=? ";
    
    public List<Seller> getSellersByType(String type) throws VGBException {
        List<Seller> list = new ArrayList<>();
        try (Connection connection = RDBConnection.getConnection();
                PreparedStatement pstmt = connection.prepareStatement(SELECT_SELLERS_BY_TYPE);) {
            pstmt.setString(1, type);
            try (ResultSet rs = pstmt.executeQuery();) {
                while (rs.next()) {
                    Seller s = new Seller();
                    String rsType = rs.getString("type");
                    
    //////////////////////////case1 靈活度高//////////////////////////////////////                
                    String className = Seller.class.getName();//直接去抓類別名稱 有就用ex:Book 沒有出錯就用Product
                    className = className.replaceAll(Seller.class.getSimpleName(), rsType);
                try{
                    s = (Seller) Class.forName(className).newInstance();
                }catch(Exception ex){
                    s = new Seller();
                }    
//                    //有錯就變成product
//                }
                ////////////////////case2 簡易//////////////////////
//                    if (rsType.equals("Book")) {
//                        p = new Book();
//                    } else {
//                        p = new Product();
//                    }

                    s.setId(rs.getInt("id"));
                    s.setName(rs.getString("name"));
                    s.setPrice(rs.getInt("price"));
                    s.setInterest(rs.getString("interest"));
                    s.setLocation(rs.getString("location"));

                    if (s instanceof Seller) {
                   ((Seller) s).setRatingGood(rs.getInt("rating_good"));
                   ((Seller) s).setRatingBad(rs.getInt("rating_bad"));
                  }  
                    s.setBirthday(rs.getDate("birthday"));
                    
                    s.setGender(rs.getString("gender").charAt(0));
                    
                    list.add(s);
                }
            }
        } catch (SQLException ex) {
            throw new VGBException("依據類型查詢賣家失敗", ex);
        }
        return list;
    }
}
