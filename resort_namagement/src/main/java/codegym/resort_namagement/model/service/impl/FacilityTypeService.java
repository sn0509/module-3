package codegym.resort_namagement.model.service.impl;

import codegym.resort_namagement.model.entity.FacilityType;
import codegym.resort_namagement.model.service.IFacilityTypeService;

import java.util.List;

public class FacilityTypeService implements IFacilityTypeService {
    @Override
    public List<FacilityType> findAll() {
        return null;
    }

    @Override
    public FacilityType findByID(Long id) {
        return null;
    }

    @Override
    public boolean add(FacilityType facilityType) {
        return false;
    }

    @Override
    public boolean edit(FacilityType facilityType) {
        return false;
    }

    @Override
    public boolean remove(Long id) {
        return false;
    }
}
