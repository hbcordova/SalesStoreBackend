package com.tbs.storesales.services;

import com.tbs.storesales.domain.entity.Customer;
import com.tbs.storesales.domain.repositories.CustomerRepository;
import com.tbs.storesales.domain.services.CustomerService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {

    private final CustomerRepository customerRepository;

    public CustomerServiceImpl(CustomerRepository customerRepository) {
        this.customerRepository = customerRepository;
    }

    @Override
    public List<Customer> getAll() {
        return customerRepository.findAll();
    }

    @Override
    public Customer getById(Integer id) {
        return customerRepository.findById(id).orElseThrow(() -> new RuntimeException("Customer not found!"));
    }

    @Override
    public Customer save(Customer saveCustomer) {
        return customerRepository.save(saveCustomer);
    }

    @Override
    public Customer update(Customer upCustomer, Integer id) {

        // Get customer to update
        Customer updatedCustomer = getById(id);

        // Updated the fields
        updatedCustomer.setCompanyName(upCustomer.getCompanyName());

        return customerRepository.save(updatedCustomer);
    }

    @Override
    public void delete(Integer id) {
        Customer deletedCustomer = getById(id);

        customerRepository.delete(deletedCustomer);
    }
}
