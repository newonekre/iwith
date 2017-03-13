/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.iwith.entity;

/**
 *
 * @author Administrator
 */


public class Seller extends Customer {
    private int price;
    private int ratingGood;
    private int ratingBad;
    
        public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getRatingGood() {
        return ratingGood;
    }

    public void setRatingGood(int ratingGood) {
        this.ratingGood = ratingGood;
    }

    public int getRatingBad() {
        return ratingBad;
    }

    public void setRatingBad(int ratingBad) {
        this.ratingBad = ratingBad;
    }

    
    public Seller() {
    }
    public Seller(String email,String password) {
        super(email,password);
    }
    public Seller(String email,String password,String name,String phone,char gender) {
        super( email, password, name, phone,gender);
    }

    @Override
    public String toString() {
        return super.toString() + "price=" + price +"\n"
                + "ratingGood="+ratingGood+"\n"
                + "ratingBad="+ratingBad+"\n"+ '}';
    }

    

    
}
