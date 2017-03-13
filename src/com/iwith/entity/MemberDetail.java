//package com.iwith.entity;
//
//import com.iwith.exception.VGBException;
//import com.iwith.utils.IwithUitilities;
//import java.text.DateFormat;
//import java.text.ParseException;
//import java.text.SimpleDateFormat;
//import static java.time.OffsetTime.now;
//import java.util.Date;
//import java.util.GregorianCalendar;
//import java.util.Objects;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//
///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
///**
// *
// * @author Administrator
// */
//public class MemberDetail implements Comparable{
//    
//    public static final char MALE ='M';
//    public static final char FEMALE ='F';
//
//
//    private String firstName;
//    private String lastName;
//    private Date birthday;
//    private int age;
//    //private char gender;//'M','F'
//    private Gender gender;
//    private Double price;
//    private String hobby;
//    private int ratingGood;
//    private int ratingBad;
//
//    public String getFirstName() {
//        return firstName;
//    }
//
//    public void setFirstName(String firstName) {
//        this.firstName = firstName;
//    }
//
//    public String getLastName() {
//        return lastName;
//    }
//
//    public void setLastName(String lastName) {
//        this.lastName = lastName;
//    }
//
//    public Double getPrice() {
//        return price;
//    }
//
//    public void setPrice(Double price) {
//        this.price = price;
//    }
//
//    public String getHobby() {
//        return hobby;
//    }
//
//    public void setHobby(String hobby) {
//        this.hobby = hobby;
//    }
//
//    public int getRatingGood() {
//        return ratingGood;
//    }
//
//    public void setRatingGood(int ratingGood) {
//        this.ratingGood = ratingGood;
//    }
//
//    public int getRatingBad() {
//        return ratingBad;
//    }
//
//    public void setRatingBad(int ratingBad) {
//        this.ratingBad = ratingBad;
//    }
//
//    
//    public MemberDetail() {
//    }
//
//
//
//    public MemberDetail(String password, String lastName,char gender) {
//        this.lastName = lastName;
//        this.password = password;
//        setGender(gender);
//    } 
//
//    public String getPassword() {
//        return password;
//    }
//
//    public void setPassword(String password) {
//        //密碼檢查程式 空白\s 其他符號
//        this.password = password;
//    }
//
//    public String getEmail() {
//        return email;
//    }
//
//    public void setEmail(String email) {
//        this.email = email;
//    }
//
//    public String getPhone() {
//        return phone;
//    }
//
//    public void setPhone(String phone) {
//        this.phone = phone;
//    }
//    public char getGender() {
//        switch (this.gender){
//            case Male:
//                return MALE;
//            case Female:
//                return FEMALE;
//        }
//        return MALE;
//    }
//
//    public void setGender(Gender gender) {
//        this.gender = gender;
//    }
//    public void setGender(char gender) {
//        this.gender = gender=='F'?Gender.Female:Gender.Male;
//    }
//    public boolean checkGender(char gender){
//        switch (gender) {
//            case FEMALE:
//            case MALE:
//                return true;
//            default:
//                return false;
//        }
//    }
//
//
//
//    public Date getBirthday() {
//        return birthday;
//    }
//
//    public void setBirthday(Date birthday) throws VGBException {
//        if(birthday==null || (birthday!=null &&birthday.before(new Date()))){
//        this.birthday = birthday;
//        //==null:表示使用者不輸入
//        //如果!=null 表示有輸入則需要判斷生日日期至少在當下時間之前
//    }else{
//          throw new VGBException("生日日期至少在當下時間之前"); 
//       }
//  }
//
//    public static final DateFormat webDateFormat;
//    static{
//        webDateFormat = new SimpleDateFormat("yyyy-MM-dd");
//    }//日期Case 3
//    
//    
//    public void setBirthday(String bDay) throws VGBException {//沒有宣告只能throw RuntimeException ,Error
//        //Chap13
//        if(bDay!=null && bDay.length()>0){
//            try {
//                
//                bDay = bDay.replace('/', '-');
//                Date d = webDateFormat.parse(bDay);
//                this.birthday =d;
//            } catch (ParseException ex) {
//                Logger.getLogger(MemberDetail.class.getName()).log(Level.SEVERE, 
//                        "客戶生日日期不正確", ex);
//                throw new VGBException("客戶生日日期格式不正確");
//                //catch (ParseException ex) 別人導致錯誤??
//            }
//        
//        }else{
//            this.birthday =null;//生日非必要欄位
//        }
//    }
//
//    public void setBirthday(int year, int month, int day) {
//        //Case 1 : java.util.Date
////        if (year < 1900) {
////            System.out.println("Year must >= 1900");
////            return;
////        }
////        if (month < 1 || month > 12) {
////            System.out.println("Month must between 1 - 12");
////            return;
////        }
////        if (day < 1 || day > 31) {
////            System.out.println("Day must between 1 - 31");
////            return;
////        }
////        this.birthday = new Date(year - 1900, month - 1, day);
//        //Case 2 : Calendar
//        this.birthday = new GregorianCalendar(year,month-1,day).getTime();
//        
//    }
//
//    public int getAge() {
//        Date now = new Date();
//        if (this.getBirthday() != null) {
//            if (now.after(birthday)) {
//                long nowMiliSecs = now.getTime();
//                long bDayMiliSecs = birthday.getTime();
//                long diff = nowMiliSecs - bDayMiliSecs;
//                Date age = new Date(diff);
//                return age.getYear() + 1900 - 1970;
//            }
//        }
//        return 0;
//    }
//
//    @Override
//    public boolean equals(Object obj) {
//        if (this == obj) {//this 是non static屬性 每物件建立時有this 和super
//            return true;
//        }
//        if (obj == null) {
//            return false;
//        }
//        if (!(obj instanceof MemberDetail)) {
//            return false;
//        }
//        final MemberDetail other = (MemberDetail) obj;
//        if (!this.email.equals(other.email)) {
//            return false;//
//        }
//        return true;
//    }
//
//    @Override
//    public int compareTo(Object o) {
//        MemberDetail other =(MemberDetail)o;
//        int rtn = this.email.compareTo(other.email);//email
//        return rtn;//email比對  大於傳回正整數  小於傳回負整數 等於傳回0
//    }
//
//    @Override
//    public String toString() {
//        return "Customer{" + "email=" + email +
//                ", firstName=" + firstName +
//                ", lastName=" + lastName +
//                ", password=" + password +
//                ", phone=" + phone +
//                ", gender=" + gender +
//                ", price=" + price +
//                ", hobby=" + hobby +
//                ", birthday=" + birthday +
//                ", type=" + type +
//                ", ratingGood=" + ratingGood +
//                ", ratingBad=" + ratingBad +
//                ", points=" + points + 
//                ", age=" + ratingGood +'}';
//    }
//
//}
