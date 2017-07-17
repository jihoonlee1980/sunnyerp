package main_beom.model;


import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

public class main_jakgokDAO extends SqlSessionDaoSupport  {
	@Autowired
	main_jakgokDTO dto;
	
	@Autowired
	main_jaksaDTO sdto;
	
	public List<main_jakgokDTO> main_selectDataOfBoard() {
		// TODO Auto-generated method stub
		List<main_jakgokDTO> list = null;
		
		
		
		return list = getSqlSession().selectList("main_selectDataOfBoard");
		
	}
	
	public List<main_jaksaDTO> main_selectJaksaOfBoard() {
		// TODO Auto-generated method stub
		List<main_jaksaDTO> list = null;
		
		
		
		return list = getSqlSession().selectList("main_selectJaksaOfBoard");
		
	}

}
