package com.tbs.storesales.domain.services;

import com.tbs.storesales.domain.entity.Customer;
import com.tbs.storesales.resources.CustomerSaveResource;

import java.util.List;

public interface CustomerService {
    List<Customer> getAll();
    Customer getById(Integer id);
    Customer save(Customer saveCustomer);
    Customer update(CustomerSaveResource upCustomer, Integer id);
    void delete(Integer id);
}
