package com.tbs.storesales.services;

import com.tbs.storesales.domain.entity.Customer;
import com.tbs.storesales.domain.repositories.CustomerRepository;
import com.tbs.storesales.domain.services.CustomerService;
import com.tbs.storesales.resources.CustomerSaveResource;
import com.tbs.storesales.shared.exceptions.NotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

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
        return customerRepository.findById(id).orElseThrow(() -> new NotFoundException(String.format("Customer with id %d not found!", id)));
    }

    @Override
    public Customer save(Customer saveCustomer) {
        return customerRepository.save(saveCustomer);
    }

    @Override
    public Customer update(CustomerSaveResource upCustomer, Integer id) {

        // Get customer to update
        Customer updatedCustomer = getById(id);

        // Updated the fields
        updatedCustomer.setCompanyName(upCustomer.getCompanyName());
        updatedCustomer.setContactName(upCustomer.getContactName());
        updatedCustomer.setContactTitle(upCustomer.getContactTitle());
        updatedCustomer.setAddress(upCustomer.getAddress());
        updatedCustomer.setCity(upCustomer.getCity());
        updatedCustomer.setRegion(upCustomer.getRegion());
        updatedCustomer.setPostalCode(upCustomer.getPostalCode());
        updatedCustomer.setCountry(upCustomer.getCountry());
        updatedCustomer.setPhone(upCustomer.getPhone());
        updatedCustomer.setFax(upCustomer.getFax());

        return customerRepository.save(updatedCustomer);
    }

    @Override
    public void delete(Integer id) {
        Optional<Customer> deletedCustomer = customerRepository.findById(id);

        if (deletedCustomer.isEmpty()) return;

        customerRepository.delete(deletedCustomer.get());
    }
}
