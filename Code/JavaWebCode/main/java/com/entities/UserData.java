package com.entities;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * 注意：使用注解方式需要使用 lombok
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString

public class UserData {
    private Integer id;
    private String username;
    private String gender;
    private String location;
    private Integer age;
    private String health;
    private String reason;
    private String inherit;
    private Integer height;
    private Integer weight;
    private String education;
    private Integer salary;
    private String house;
    private String car;;
    private String marriage;
    private String kid;
    private String siblings;
    private String career;
    private String company;
    private String hometown;
    private String nation;
    private String animal;
    private String homepage;

}
