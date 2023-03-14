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
public class UserTrend {
    private Integer t_id;
    private Integer u_id;
    private String uname;
    private String text;

    //private byte image;
}
