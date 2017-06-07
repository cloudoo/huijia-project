package com.cloudo.hj.service;

import com.cloudo.hj.domain.CoacherInfo;

import java.util.List;

/**
 * Created by cloudpj on 17/5/24.
 */

public interface ICoacherInfoService  extends CrudService<CoacherInfo,CoacherInfo>{

    List<CoacherInfo> findSimple(CoacherInfo coacherInfo);
    List<CoacherInfo> findCoacherBaseInfo();

}
