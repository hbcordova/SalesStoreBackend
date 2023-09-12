package com.tbs.storesales.shared.mapping;

import com.tbs.storesales.mapping.CustomerMapper;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class MappingConfig {
    @Bean
    public EnhancedModelMapper modelMapper() {
        return new EnhancedModelMapper();
    }

    @Bean
    public CustomerMapper customerMapper() {
        return new CustomerMapper();
    }
}
