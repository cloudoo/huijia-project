package com.cloudo.hj.service;

import com.cloudo.hj.dao.BaseDao;

import java.util.List;

/**
 * Created by cloudpj on 17/5/29.
 */
public abstract class AbstractBaseService<T,K> implements CrudService<T,K>{

    public abstract BaseDao<T,K> getBaseDao();

    public List<T> findAll() {
        return getBaseDao().findAll();
    }

    public T find(Long id) {
        return getBaseDao().find(id);
    }

    public List<T> findByParam(K k){
        return getBaseDao().findByParam(k);
    }

    public void save(T t) {
        getBaseDao().save(t);
    }

    public boolean update(T t) {
        return getBaseDao().update(t) > 0;
    }

    public boolean remove(Long id) {
        return getBaseDao().remove(id) > 0;
    }
}
