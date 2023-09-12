package com.tbs.storesales.resources;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CustomerResource {
    private Integer id;
    private String companyName;
    private String contactTitle;
    private String address;
    private String city;
    private String region;
    private String postalCode;
    private String country;
    private String phone;
    private String fax;
}
