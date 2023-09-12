package com.tbs.storesales.controllers;

import com.tbs.storesales.domain.entity.Customer;
import com.tbs.storesales.domain.services.CustomerService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/v1/customers")
public class CustomerController {
    private final CustomerService customerService;

    public CustomerController(CustomerService customerService) {
        this.customerService = customerService;
    }

    @GetMapping
    public ResponseEntity<List<Customer>> getAll() {
        return ResponseEntity.ok(customerService.getAll());
    }

    @GetMapping("{id}")
    public ResponseEntity<Customer> getById(@PathVariable Integer id) {
        return ResponseEntity.ok(customerService.getById(id));
    }

    @PostMapping
    public ResponseEntity<Customer> save(Customer request) {
        return ResponseEntity.ok(customerService.save(request));
    }

    @PutMapping("{id}")
    public ResponseEntity<Customer> update(@RequestBody Customer request, @PathVariable Integer id) {
        return ResponseEntity.ok(customerService.update(request, id));
    }

    @DeleteMapping("{id}")
    public ResponseEntity delete(@PathVariable Integer id) {
        customerService.delete(id);
        return ResponseEntity.ok().build();
    }
}
