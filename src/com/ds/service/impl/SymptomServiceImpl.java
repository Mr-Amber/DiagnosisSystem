package com.ds.service.impl;

import com.ds.common.model.SymptomType;
import com.ds.service.SymptomService;
import com.ds.vo.SymptomVO;
import com.jfinal.plugin.activerecord.Page;

public class SymptomServiceImpl implements SymptomService {
    @Override
    public Page<SymptomType> getRootSymptom(SymptomVO symptomVO) {
        return null;
    }

    @Override
    public boolean addSymptom(SymptomType symptomType) {
        return false;
    }

    @Override
    public boolean deleteSymptomById(String tid) {
        return false;
    }

    @Override
    public boolean modifySymptom(String tid, SymptomType symptomType) {
        return false;
    }
}
