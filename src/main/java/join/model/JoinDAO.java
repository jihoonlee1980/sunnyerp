package join.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class JoinDAO extends SqlSessionDaoSupport implements JoinDAO_Interface{

	public boolean getIdCheck(String m_id) {
		// TODO Auto-generated method stub
		int r = getSqlSession().selectOne("idCheckOfJoin", m_id);
		return r==1?true:false;
	}

	public boolean getNickCheck(String m_nick) {
		// TODO Auto-generated method stub
		int r = getSqlSession().selectOne("nickCheckOfJoin", m_nick);
		return r==1?true:false;
	}

	public void insertMember(JoinDTO joindto) {
		// TODO Auto-generated method stub
		getSqlSession().insert("insertMemberOfJoin", joindto);
	}
	
}
