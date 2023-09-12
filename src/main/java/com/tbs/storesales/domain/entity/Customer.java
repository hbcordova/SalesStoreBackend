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
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "customer_id", nullable = false)
    private Integer id;

    @Column(length = 30)
    private String companyName;

    @Column(length = 30, nullable = false)
    private String contactName;

    @Column(length = 30, nullable = false)
    private String contactTitle;

    @Column(length = 255, nullable = false)
    private String address;

    @Column(length = 58, nullable = false)
    private String city;

    @Column(length = 30, nullable = false)
    private String region;

    @Column(length = 6, nullable = false)
    private String postalCode;

    @Column(length = 40, nullable = false)
    private String country;

    @Column(length = 9, nullable = false)
    private String phone;

    @Column(length = 10, nullable = false)
    private String fax;
}
