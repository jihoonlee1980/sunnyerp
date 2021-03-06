package spring.model;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class AnswerOracleDao extends SqlSessionDaoSupport implements AnswerDao {

	public int getRef() {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("maxPkOfAnswer");
	}
	
	public void updateRestep(int ref, int re_step) {
		// TODO Auto-generated method stub
		HashMap<String, Integer> map=new HashMap<String, Integer>();
		map.put("ref", ref);
		map.put("re_step", re_step);
		
		getSqlSession().update("updateRestepOfAnswer", map);
	}
	
	public int insertAnswer(AnswerDto dto) {
		// TODO Auto-generated method stub
		int ref=dto.getRef();
		int re_step=dto.getRe_step();
		int re_level=dto.getRe_level();
		int pk=dto.getPk();
		
		if(pk==0)
		{
			//새글경우
			ref=getRef()+1;
			re_step=0;
			re_level=0;
			
			dto.setRef(ref);
		}else{
			//답글일 경우
			updateRestep(ref, re_step);
			re_step++;
			re_level++;
		}
		
		dto.setRe_level(re_level);
		dto.setRe_step(re_step);
		
		getSqlSession().insert("insertOfAnswer", dto);
		
		return 0;
	}

	public List<AnswerDto> getList(int num,int start, int end) {
		// TODO Auto-generated method stub
		HashMap<String,Integer> map=new HashMap<String, Integer>();
		map.put("num", num);
		map.put("start", start);
		map.put("end", end);
		
		List<AnswerDto> list=getSqlSession().selectList("selectDataOfAnswer", map);
		return list;
	}

	public int getTotalCount(int num) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("countOfAnswer", num);
	}

	public AnswerDto getData(int pk) {
		// TODO Auto-generated method stub
		AnswerDto dto=getSqlSession().selectOne("contentDataOfAnswer", pk);
		return dto;
	}

	public boolean isEqualPass(int pk, String pass) {
		// TODO Auto-generated method stub
		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("pk", pk);
		map.put("pass", pass);
		int n=getSqlSession().selectOne("passEqualOfAnswer", map);
		return n==1?true:false;
	}

	public void deleteAnswer(int pk) {
		// TODO Auto-generated method stub
		getSqlSession().delete("deleteOfAnswer", pk);
	}

	public void deleteNumAnswer(int num) {
		// TODO Auto-generated method stub
		getSqlSession().delete("deleteNumOfAnswer", num);
	}

	public void updateAnswer(AnswerDto dto) {
		// TODO Auto-generated method stub
		getSqlSession().update("updateOfAnswer", dto);
	}
	
	public List<AnswerDto> getAllList(int num) {
		// TODO Auto-generated method stub
		List<AnswerDto> list=getSqlSession().selectList("selectAllOfAnswer", num);
		return list;
	}

}









