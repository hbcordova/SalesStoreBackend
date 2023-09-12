package com.tbs.storesales.mapping;

import com.tbs.storesales.domain.entity.Customer;
import com.tbs.storesales.resources.CustomerResource;
import com.tbs.storesales.resources.CustomerSaveResource;
import com.tbs.storesales.shared.mapping.EnhancedModelMapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.Serializable;
import java.util.List;

public class CustomerMapper implements Serializable {
    @Autowired
    EnhancedModelMapper modelMapper;

    public CustomerResource toResource(Customer model) {
        return modelMapper.map(model, CustomerResource.class);
    }

    public List<CustomerResource> toResource(List<Customer> modelList) {
        return modelMapper.mapList(modelList, CustomerResource.class);
    }

    public Customer toModel(CustomerSaveResource resource) {
        return modelMapper.map(resource, Customer.class);
    }
}
