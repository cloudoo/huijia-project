package com.cloudo.hj.dao;

import com.cloudo.hj.domain.CoacherInfo;

import java.util.List;

/**
 * Created by cloudpj on 17/5/24.
 */
public interface BaseDao<T,K> {
    public List<T> findAll();
    public T find(Long id);
    public List<T> findByParam(K k);
    public int save(T t);
    public int update(T t);
    public int remove(Long id);
}
