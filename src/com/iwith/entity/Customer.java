package com.iwith.entity;

import com.iwith.exception.VGBException;
import com.iwith.utils.IwithUitilities;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import static java.time.OffsetTime.now;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Administrator
 */
public class Customer implements Comparable{
    public static final char MALE = 'M';
    public static final char FEMALE = 'F';
    
    /**
     * 會員編號，由DB新增時自動給號，pkey
     */
    private int id; 
    private String email;
    private String name;
    private String password;
    private Gender gender;
    private String phone;
    private int points;
    private String interest;
    private Date birthday;
    private int height;
    private int weight;
    private String location;
    private int age;
    
    public Customer() {
    }
    
    
    public Customer(String email,String password) {
        this.email=email;
        this.password = password;
    }
    
    
    public Customer(String email,String password,String name,String phone,char gender) {
        this.email = email;
        this.password = password;
        this.name = name;
        this.phone =phone;
        setGender(gender);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getPoints() {
        return points;
    }

    public void setPoints(int points) {
        this.points = points;
    }


    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }



    public char getGender() {
        switch (this.gender) {
            case Male:
                return MALE;
            case Female:
                return FEMALE;
        }
        return MALE;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }
    
    
    /**
     *  replaced by setGender(Gender.Male) or setGender(Gender.Female)
     * @param gender
     * @deprecated
     */    
    public void setGender(char gender) {
        if(gender == FEMALE || gender == MALE){
            this.gender = gender == FEMALE ? Gender.Female : Gender.Male;
        }else{
            try {
                throw new VGBException("性別資料不正確");
            } catch (VGBException ex) {
                Logger.getLogger(Customer.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public boolean checkGender(char gender) {
        switch (gender) {
            case FEMALE:
            case MALE:
                return true;
            default:
                return false;
        }
    }


    public String getInterest() {
        return interest;
    }

    public void setInterest(String interest) {
        this.interest = interest;
    }

        public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) throws VGBException {        
        if(birthday==null || (birthday!=null && birthday.before(new Date()))){
            this.birthday = birthday;
        }else{
            System.out.println(".....");
            throw new VGBException("客戶生日日期必須小於現在時間!");
        }    
    }

    public static final DateFormat webDateFormat; //blank static final attribute
    static {
        String dfPattern = System.getProperty("date-format");
        System.out.println("dfPattern = " + dfPattern);
        if(dfPattern!=null){        
            webDateFormat = new SimpleDateFormat(dfPattern);
        }else{
            webDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        }
    }

    public void setBirthday(String bDay) throws VGBException{
        if (bDay != null && bDay.length() > 0) {
            try {
                bDay = bDay.replace('/', '-');
                Date d = webDateFormat.parse(bDay);
                this.birthday = d;
            } catch (ParseException ex) {
                Logger.getLogger(Customer.class.getName()).log(
                        Level.SEVERE,
                        "[server]客戶生日日期格式不正確!", ex);
                throw new VGBException("客戶生日日期格式不正確!");
            }
        } else {
            this.birthday = null;
        }
    }

    public void setBirthday(int year, int month, int day) {
        this.birthday = new GregorianCalendar(
                year, month - 1, day).getTime();
    }

    public int getAge() {
        Date now = new Date();
        if (this.getBirthday() != null) {
            if (now.after(birthday)) {
                long nowMiliSecs = now.getTime();
                long bDayMiliSecs = birthday.getTime();
                long diff = nowMiliSecs - bDayMiliSecs;
                Date age = new Date(diff);
                return age.getYear() + 1900 - 1970;
            }
        }
        return Integer.parseInt("");
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }


//    public void setAge(int age) {
//        this.age = age;
//    }

    @Override
    public String toString() {
        return this.getClass().getName()
                + ", id=" + id+"\n"
                + ", email=" + email+"\n"
                + ", name=" + name +"\n"
                + ", password=" + password +"\n"
                + ", gender=" + gender +"\n"
                + ", phone=" + phone +"\n"
                + ", points=" + points +"\n"
                + ", interest=" + interest +"\n"
                + ", birthday=" + birthday +"\n"
                + ", height=" + height +"\n"
                + ", weight=" + weight +"\n"
                + ", location=" + location +"\n"
                + ", age=" + age + '}';
    }

    
    

    @Override
    public int compareTo(Object o) {
       Customer other = (Customer)o;
       int rtn = this.email.compareTo(other.email);//相同回傳0
       return rtn; 
    }

    
}
