package codegym.resort_namagement.model.service.impl;

import codegym.resort_namagement.model.entity.User;
import codegym.resort_namagement.model.service.IUserService;

import java.util.List;

public class UserService implements IUserService {
    @Override
    public List<User> findAll() {
        return null;
    }

    @Override
    public User findByID(Long id) {
        return null;
    }

    @Override
    public boolean add(User user) {
        return false;
    }

    @Override
    public boolean edit(User user) {
        return false;
    }

    @Override
    public boolean remove(Long id) {
        return false;
    }
}
