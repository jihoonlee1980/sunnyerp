package mypage.model;

import java.util.List;

import main_beom.model.main_jakgokDTO;
import main_beom.model.main_jaksaDTO;

public interface MyPageDAO_interface {
	public void insertProfile(MyPageDTO mypageDto);
	public String getProfile(String m_id);
	public int getMyComposeCount(String m_id);
	public List<main_jakgokDTO> getMyCompose(String m_id);
	public int getMyLyricCount(int seq);
	public List<main_jaksaDTO> getMyLyric(int seq);
	public int getSeq(String m_id);
}
