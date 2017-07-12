package spring.model;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class BoardOracleDao extends SqlSessionDaoSupport implements BoardDao {

	public int insertBoard(BoardDto dto) {
		// TODO Auto-generated method stub
		int n=getSequence();
		dto.setNum(n);
		getSqlSession().insert("insertOfBoard", dto);
		return n;
	}

	public List<BoardDto> getList(int start, int end) {
		// TODO Auto-generated method stub
		HashMap<String, Integer> map=new HashMap<String, Integer>();
		map.put("start", start);
		map.put("end", end);
		List<BoardDto> list=getSqlSession().selectList("selectDataOfBoard", map);
		return list;
	}

	public int getTotalCount() {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("countOfBoard");
	}
	
	public int getSequence() {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("sequenceOfBoard");
	}
	
	public BoardDto getData(int num) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("contentDataOfBoard", num);
	}
	
	public void updateReadcount(int num) {
		// TODO Auto-generated method stub
		getSqlSession().update("updateReadcountOfBoard", num);
	}

	public boolean isEqualPass(int num, String pass) {
		// TODO Auto-generated method stub
		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("num",num);
		map.put("pass", pass);
		
		int n=getSqlSession().selectOne("passEqualOfBoard", map);
		
		return n==1?true:false;
	}

	public void deleteBoard(int num) {
		// TODO Auto-generated method stub
		getSqlSession().delete("deleteOfBoard", num);
		
	}
	
	public void updateBoard(BoardDto dto) {
		// TODO Auto-generated method stub
		getSqlSession().update("updateOfBoard", dto);
	}
	
}










