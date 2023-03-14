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
public class Manager {
    private Integer id;
    private String username;
    private String password;

    public Manager(String username,String password)
    {
        this.username=username;
        this.password=password;
    }
}
