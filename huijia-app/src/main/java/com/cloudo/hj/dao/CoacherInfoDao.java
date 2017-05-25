package com.cloudo.hj.dao;

import com.cloudo.hj.domain.CoacherInfo;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by cloudoo on 2017/5/20.
 */
@Repository(value = "coacherInfoDao")
public interface CoacherInfoDao extends BaseDao<CoacherInfo>{

        public List<CoacherInfo> findSimple(CoacherInfo coacherInfo);

}
