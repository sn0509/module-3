package codegym.resort_namagement.model.service.impl;

import codegym.resort_namagement.model.entity.Facility;
import codegym.resort_namagement.model.service.IFacilityService;

import java.util.List;

public class FacilityService implements IFacilityService {
    @Override
    public List<Facility> findAll() {
        return null;
    }

    @Override
    public Facility findByID(Long id) {
        return null;
    }

    @Override
    public boolean add(Facility facility) {
        return false;
    }

    @Override
    public boolean edit(Facility facility) {
        return false;
    }

    @Override
    public boolean remove(Long id) {
        return false;
    }
}
