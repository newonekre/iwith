/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.iwith.service;

import com.iwith.entity.Seller;
import com.iwith.exception.VGBException;
import java.util.List;

/**
 *
 * @author Administrator
 */
public class SellerService {
    //ProductsDAO 的代理程式 避免使用者直接使用到DAO
    private SellersDAO dao = new  SellersDAO();

//    public Seller get(int id) throws VGBException {
//        //insert code  Delegate Mathod
//        return dao.get(id);
//    }

    public List<Seller> getSellersByGender(String gender) throws VGBException {
        return dao.getSellersByGender(gender);
    }
    public List<Seller> getSellersByType(String type) throws VGBException {
        return dao.getSellersByType(type);
    } 
    
    //TODO: insert update delete Product
}
