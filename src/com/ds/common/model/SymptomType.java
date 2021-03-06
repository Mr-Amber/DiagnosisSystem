package com.ds.common.model;

import com.ds.common.model.base.BaseSymptomType;
import com.ds.vo.SymptomVO;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Sqls;

/**
 * Generated by JFinal.
 */
@SuppressWarnings("serial")
public class SymptomType extends BaseSymptomType<SymptomType> {
	public static final SymptomType dao = new SymptomType().dao();

	public Page<SymptomType> getRootSymptom(SymptomVO symptomVO){
		String[] sqlPart = Sqls.get("searchSymptoms").trim().split(" from", 2);
		String select = sqlPart[0];

		sqlPart = sqlPart[1].split("where");
		String except = "from"+sqlPart[0];

		if(symptomVO.isFilterParent()){
			except += "where";
			if(symptomVO.getUperId() == null)
				sqlPart[0].replaceFirst("=\\?", "is null");
			else
				sqlPart[0].replaceFirst("\\?", symptomVO.getUperId());
			except += sqlPart[0];
		}
		else{
			sqlPart[0] = null;
		}

		Page<SymptomType> page = dao.paginate(symptomVO.getPage(), symptomVO.getCountInPage(),
				select, except);
		return page;
	}



	public boolean add(SymptomType symptomType){
		return symptomType.save();
	}

	public boolean deleteSymptomById(String tid){
		return new SymptomType().deleteById(tid);
	}

	public boolean update(String tid, SymptomType data){
		if(!tid.equals(data.getTid()))
			return false;
		SymptomType symptomType = new SymptomType().findById(tid);
		if(symptomType == null)
			return false;
		symptomType.setUperId(data.getUperId());
		symptomType.setTname(data.getTname());
		symptomType.setDescription(data.getDescription());
		return symptomType.update();
	}
}
