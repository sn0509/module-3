package codegym.resort_namagement.model.dao;

import java.util.List;

public interface IUtilityDao <T>{
    List<T> findAll();

    T findById(int id);

    boolean add(T t);

    boolean edit(T t);

    boolean remove(int id);
}
