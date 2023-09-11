package com.tbs.storesales.domain.services;

import com.tbs.storesales.domain.entity.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> getAll();
    Customer getById(Integer id);
    Customer save(Customer saveCustomer);
    Customer update(Customer upCustomer, Integer id);
    void delete(Integer id);
}
