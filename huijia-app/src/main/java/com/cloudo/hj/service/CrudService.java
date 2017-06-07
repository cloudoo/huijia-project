package com.cloudo.hj.service;

import java.util.List;

/**
 * Created by cloudpj on 17/5/30.
 */
public interface CrudService<T,K> {
    List<T> findAll();

    T find(Long id) ;

    List<T> findByParam(K k);

    void save(T t);

    boolean update(T t);

    boolean remove(Long id);
}
