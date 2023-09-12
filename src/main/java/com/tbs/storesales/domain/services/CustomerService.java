package com.tbs.storesales.domain.services;

import com.tbs.storesales.domain.entity.Customer;
import com.tbs.storesales.resources.CustomerSaveResource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;


public interface CustomerService {
    Page<Customer> getAll(Pageable pageable);
    Customer getById(Integer id);
    Customer save(Customer saveCustomer);
    Customer update(CustomerSaveResource upCustomer, Integer id);
    void delete(Integer id);
}
