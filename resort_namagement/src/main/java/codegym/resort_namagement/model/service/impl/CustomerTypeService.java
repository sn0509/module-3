package codegym.resort_namagement.model.service.impl;

import codegym.resort_namagement.model.entity.CustomerType;
import codegym.resort_namagement.model.service.ICustomerTypeService;

import java.util.List;

public class CustomerTypeService implements ICustomerTypeService {
    @Override
    public List<CustomerType> findAll() {
        return null;
    }

    @Override
    public CustomerType findByID(Long id) {
        return null;
    }

    @Override
    public boolean add(CustomerType customerType) {
        return false;
    }

    @Override
    public boolean edit(CustomerType customerType) {
        return false;
    }

    @Override
    public boolean remove(Long id) {
        return false;
    }
}
