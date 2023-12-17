package codegym.resort_namagement.model.service.impl;

import codegym.resort_namagement.model.entity.RentType;
import codegym.resort_namagement.model.service.IRentTypeService;

import java.util.List;

public class RentTypeService implements IRentTypeService {
    @Override
    public List<RentType> findAll() {
        return null;
    }

    @Override
    public RentType findByID(Long id) {
        return null;
    }

    @Override
    public boolean add(RentType rentType) {
        return false;
    }

    @Override
    public boolean edit(RentType rentType) {
        return false;
    }

    @Override
    public boolean remove(Long id) {
        return false;
    }
}
