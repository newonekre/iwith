/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.iwith.entity;

import java.util.Date;

/**
 *
 * @author Administrator
 */
public class Book extends Product {
    private String subtitle;
    private String autherName;
    private String isbn;
    private int discount;
    private Date publishDate;
    private Publisher publisher;//資料庫不能存物件類型

    public String getSubtitle() {
        return subtitle;
    }

    public void setSubtitle(String subtitle) {
        this.subtitle = subtitle;
    }

    public String getAutherName() {
        return autherName;
    }

    public void setAutherName(String autherName) {
        this.autherName = autherName;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        if(discount>0 && discount<100){
            this.discount = discount;
        }
    }

    public Date getPublishDate() {
        return publishDate;
    }

    public void setPublishDate(Date publishDate) {
        this.publishDate = publishDate;
    }

    public Publisher getPublisher() {
        return publisher;
    }

    public void setPublisher(Publisher publisher) {
        this.publisher = publisher;
    }

    @Override
    public double getUnitPrice() {//取得售價(折扣後)
        return super.getUnitPrice()*(100-discount)/100.0; 
    }
    
    public double getListPrice() {//取得定價(無折扣)
        return super.getUnitPrice(); 
    }

    @Override
    public String toString() {
        return super.toString() + "售價: "+this.getUnitPrice()
                + "\nsubtitle=" + subtitle 
                + ", autherName=" + autherName 
                + ", isbn=" + isbn + ", publishDate=" + publishDate 
                + ", publisher=" + publisher + ", discount=" + discount + '}';
    }
}
