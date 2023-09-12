package com.tbs.storesales.resources;

import jakarta.validation.Valid;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CustomerSaveResource {

    @Valid

    @NotNull(message = "company name is mandatory!")
    @NotBlank(message = "company name is mandatory!")
    @Size(min = 5, max = 30, message = "company name must be between 5 and 30 characters!")
    private String companyName;

    @NotNull(message = "contact name is mandatory!")
    @NotBlank(message = "contact name is mandatory!")
    @Size(min = 5, max = 30, message = "contact name must be between 5 and 30 characters!")
    private String contactName;

    @NotNull(message = "contact name is mandatory!")
    @NotBlank(message = "contact name is mandatory!")
    @Size(min = 5, max = 30, message = "contact name must be between 5 and 30 characters!")
    private String contactTitle;

    @NotNull(message = "address is mandatory!")
    @NotBlank(message = "address is mandatory!")
    @Size(min = 5, max = 255, message = "address must be between 5 and 255 characters!")
    private String address;

    @NotNull(message = "city is mandatory!")
    @NotBlank(message = "city is mandatory!")
    @Size(min = 3, max = 58, message = "city must be between 3 and 58 characters!")
    private String city;

    @NotNull(message = "region is mandatory!")
    @NotBlank(message = "region is mandatory!")
    @Size(min = 3, max = 30, message = "region must be between 3 and 30 characters!")
    private String region;

    @NotNull(message = "postal code is mandatory!")
    @NotBlank(message = "postal code is mandatory!")
    @Size(min = 6, max = 6, message = "postal code must be 6 characters!")
    private String postalCode;

    @NotNull(message = "country is mandatory!")
    @NotBlank(message = "country is mandatory!")
    @Size(min = 3, max = 40, message = "country must be between 3 and 40 characters!")
    private String country;

    @NotNull(message = "phone is mandatory!")
    @NotBlank(message = "phone is mandatory!")
    @Size(min = 9, max = 9, message = "phone must be 9 characters!")
    private String phone;

    @NotNull(message = "fax is mandatory!")
    @NotBlank(message = "fax is mandatory!")
    @Size(min = 10, max = 10, message = "fax must be 10 characters!")
    private String fax;
}
