package com.tbs.storesales.domain.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Table(name = "Customers")
@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "CustomerID", nullable = false)
    private Integer id;

    @Column(name = "CompanyName", length = 30, nullable = false)
    private String companyName;

    @Column(name = "ContactTitle", length = 30, nullable = false)
    private String contactTitle;

    @Column(name = "Address", length = 255, nullable = false)
    private String address;

    @Column(name = "City", length = 58, nullable = false)
    private String city;

    @Column(name = "Region", length = 30, nullable = false)
    private String region;

    @Column(name = "PostalCode", length = 6, nullable = false)
    private String postalCode;

    @Column(name = "Country", length = 40, nullable = false)
    private String country;

    @Column(name = "Phone", length = 9, nullable = false)
    private String phone;

    @Column(name = "Fax", length = 10, nullable = false)
    private String fax;
}
