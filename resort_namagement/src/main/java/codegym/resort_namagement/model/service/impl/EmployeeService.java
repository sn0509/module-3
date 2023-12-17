package codegym.resort_namagement.model.service.impl;

import codegym.resort_namagement.model.entity.Employee;
import codegym.resort_namagement.model.service.IEmployeeService;

import java.util.List;

public class EmployeeService implements IEmployeeService {
    @Override
    public List<Employee> findAll() {
        return null;
    }

    @Override
    public Employee findByID(Long id) {
        return null;
    }

    @Override
    public boolean add(Employee employee) {
        return false;
    }

    @Override
    public boolean edit(Employee employee) {
        return false;
    }

    @Override
    public boolean remove(Long id) {
        return false;
    }
}
