package login.model;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class LoginDAO extends SqlSessionDaoSupport implements LoginDAO_interface {

	public boolean loginCheck(String m_id, String m_pass, String m_level) {
		// TODO Auto-generated method stub
		LoginDTO logindto = new LoginDTO();
		logindto.setM_id(m_id);
		logindto.setM_pass(m_pass);
		logindto.setM_level(m_level);
		
		int r = getSqlSession().selectOne("loginCheck", logindto);
		return r==1?true:false;
	}

	public String searchNick(String m_id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("searchNick", m_id);
	}
}
