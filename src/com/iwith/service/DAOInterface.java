/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.iwith.service;

import com.iwith.entity.Seller;
import com.iwith.exception.VGBException;

/**
 *
 * @author Administrator
 */
public interface DAOInterface {

    void delete(Seller s) throws VGBException;

//    Seller get(int id) throws VGBException;

    void insert(Seller s) throws VGBException;

    void update(Seller s) throws VGBException;
    
}
