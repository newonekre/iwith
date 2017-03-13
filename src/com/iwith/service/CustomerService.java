package com.iwith.service;

import com.iwith.entity.Customer;
import com.iwith.exception.VGBException;
import java.util.List;

public class CustomerService {

    private CustomerDAO dao = new CustomerDAO();
    //TODO:會員註冊

    public void register(Customer c) throws VGBException{
            dao.insert(c);
    }

    //TODO:會員登入
    public Customer login(String email, String pwd) throws VGBException {
        if(email==null || email.length()==0 ||pwd==null ||pwd.length()==0){
            throw new IllegalArgumentException("登入失敗: 必須輸入email和密碼");
        }
        
        Customer c = dao.get(email);
        if (c != null && pwd.equals(c.getPassword())) {
            return c;
        } else {
            throw new VGBException("登入失敗!");
        }

    }

    //TODO
    public void update(Customer c) throws VGBException{
        dao.update(c);
    }

    public Customer get(String email) throws VGBException {
        Customer c = dao.get(email);
        return c;
    }

    public List<Customer> getCustomerListByName(String name) throws VGBException {
        return dao.getCustomerListByName(name);
        //insert code  Delegate Method 代理人程式 Delegation Model
    }

}
