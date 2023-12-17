package codegym.resort_namagement.model.service.impl;

import codegym.resort_namagement.model.entity.Customer;
import codegym.resort_namagement.model.service.ICustomerService;

import java.util.List;

public class CustomerService implements ICustomerService {
    @Override
    public List<Customer> findAll() {
        return null;
    }

    @Override
    public Customer findByID(Long id) {
        return null;
    }

    @Override
    public boolean add(Customer customer) {
        return false;
    }

    @Override
    public boolean edit(Customer customer) {
        return false;
    }

    @Override
    public boolean remove(Long id) {
        return false;
    }
}
