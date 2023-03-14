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
public class UserMateSelection {
    private Integer id;
    private String expect_marital_status;
    private String expect_address_province_code;
    private String expect_address_city_code;
    private String expect_address_county_code;
    private String expect_address;
    private Integer expect_age_min;
    private Integer expect_age_max;
    private Integer expect_height_min;
    private Integer expect_height_max;
    private Integer expect_weight_min;
    private Integer expect_weight_max;

}
