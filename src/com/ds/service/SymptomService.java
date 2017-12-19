package com.ds.service;

import com.ds.common.model.SymptomType;
import com.ds.vo.SymptomVO;
import com.jfinal.plugin.activerecord.Page;

public interface SymptomService {
    /** 获取所有类 根据symptomVO中的条件决定是大类还是子类 */
    public Page<SymptomType> getRootSymptom(SymptomVO symptomVO);
    public SymptomType getSymptomByTId(String tid);
    /** 新增类别 */
    public boolean addSymptom(SymptomType symptomType);
    /** 删除类别 */
    public boolean deleteSymptomById(String tid);
    /** 修改类别 */
    public boolean modifySymptom(String tid, SymptomType symptomType);
}
