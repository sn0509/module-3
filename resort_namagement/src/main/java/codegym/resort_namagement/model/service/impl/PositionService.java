package codegym.resort_namagement.model.service.impl;

import codegym.resort_namagement.model.entity.Position;
import codegym.resort_namagement.model.service.IPositionTypeService;

import java.util.List;

public class PositionService implements IPositionTypeService {
    @Override
    public List<Position> findAll() {
        return null;
    }

    @Override
    public Position findByID(Long id) {
        return null;
    }

    @Override
    public boolean add(Position position) {
        return false;
    }

    @Override
    public boolean edit(Position position) {
        return false;
    }

    @Override
    public boolean remove(Long id) {
        return false;
    }
}
