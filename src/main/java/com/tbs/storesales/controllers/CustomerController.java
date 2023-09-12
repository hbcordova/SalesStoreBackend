package com.tbs.storesales.controllers;

import com.tbs.storesales.domain.entity.Customer;
import com.tbs.storesales.domain.services.CustomerService;
import com.tbs.storesales.mapping.CustomerMapper;
import com.tbs.storesales.resources.CustomerResource;
import com.tbs.storesales.resources.CustomerSaveResource;
import jakarta.validation.Valid;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
@RequestMapping("api/v1/customers")
public class CustomerController {
    private final CustomerService customerService;
    private final CustomerMapper customerMapper;

    public CustomerController(CustomerService customerService, CustomerMapper customerMapper) {
        this.customerService = customerService;
        this.customerMapper = customerMapper;
    }

    @GetMapping
    public ResponseEntity<Page<CustomerResource>> getAll(@PageableDefault(page = 0, size = 10) Pageable pageable) {

        // Obtain customer pageable
        Page<Customer> customerPage = customerService.getAll(pageable);

        // Mapping models to Resource
        List<CustomerResource> resourceList = customerMapper.toResource(customerPage.getContent());

        // Creating new Pageable with Customer Resource
        Page<CustomerResource> response = new PageImpl<>(resourceList, pageable, customerPage.getTotalElements());

        // Return response
        return ResponseEntity.ok(response);
    }

    @GetMapping("{id}")
    public ResponseEntity<CustomerResource> getById(@PathVariable Integer id) {
        return ResponseEntity.ok(customerMapper.toResource(customerService.getById(id)));
    }

    @PostMapping
    public ResponseEntity<CustomerResource> save(@Valid @RequestBody CustomerSaveResource request) {
        Customer customerSave = customerMapper.toModel(request);
        return ResponseEntity.ok(customerMapper.toResource(customerService.save(customerSave)));
    }

    @PutMapping("{id}")
    public ResponseEntity<CustomerResource> update(@Valid @RequestBody CustomerSaveResource request, @PathVariable Integer id) {
        return ResponseEntity.ok(customerMapper.toResource(customerService.update(request, id)));
    }

    @DeleteMapping("{id}")
    public ResponseEntity delete(@PathVariable Integer id) {
        customerService.delete(id);
        return ResponseEntity.ok().build();
    }
}
