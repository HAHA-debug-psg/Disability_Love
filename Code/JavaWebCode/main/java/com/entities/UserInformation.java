package com.entities;

import java.util.Calendar;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.apache.htrace.shaded.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * 注意：使用注解方式需要使用 lombok
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class UserInformation {
    private int id;
    private String uname;
    private String gender;
    private int age;
    private String marital_status;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    @JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
    private Date birthday;


    private String address_province_code;
    private String address_city_code;
    private String address_county_code;
    private String address_detail_code;
    private String address;
//    private String address_province;
//    private String address_city;
//    private String address_county;
//    private String address_detail;
    private int height;
    private int weight;
    private String disability;
    private String education_background;
    private String job;
    private String introduction;
    //private byte head_image;




/*    public UserInformation(int id, String name,
                           String gender, int age,
                           String marital_status, Date date,
                           String address_province, String address_city,
                           String address_detail, int height, int weight,
                           String disability, String education_background,
                           String job, String introduction) {

    }*/
}
