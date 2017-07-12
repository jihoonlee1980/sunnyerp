package login.model;

public interface LoginDAO_interface {
	
	public boolean loginCheck(String m_id, String m_pass, String m_level);
	public String searchNick(String m_id);
}
