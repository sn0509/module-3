package codegym.resort_namagement.model.service;

import java.util.List;

public interface IUtilityService <T>{
    List<T> findAll();

    T findByID(int id);

    boolean add(T t);

    boolean edit(T t);

    boolean remove(int id);
}
