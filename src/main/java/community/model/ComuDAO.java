package community.model;


import java.util.HashMap;
import java.util.List;






import org.mybatis.spring.support.SqlSessionDaoSupport;

import spring.model.BoardDto;

public class ComuDAO extends SqlSessionDaoSupport{
	
	//커뮤니티 게시판 글 insert
	public void insertCommunity(ComuDTO cdto)
	{
		getSqlSession().insert("insertOfComu", cdto);
	}
	
	//아이디 통해서 멤버번호 불러오기
	public int selectseq(String m_id){
		
		int seq = getSqlSession().selectOne("findSeq", m_id);
		//System.out.println(seq);
		return seq;
		
	}
	
	//게시물 글 갯수
	public int getTotalcount()
	{
		return getSqlSession().selectOne("countOfComu");
	}
	
	public List<ComuDTO> getList(int start,int perpage)
	{
		HashMap<String, Integer> map=new HashMap<String, Integer>();
		map.put("start", start);
		map.put("perpage", perpage);
		
		return getSqlSession().selectList("pageingListOfComu", map);		
	}
	
	public ComuDTO getData(int b_seq)
	{
		return getSqlSession().selectOne("dataOfComu", b_seq);
	}
	
	
	public void updateReadcount(int b_seq) {
		// TODO Auto-generated method stub
		getSqlSession().update("updateReadcountOfComuBoard", b_seq);
	}
	
	
	//작성자 닉네임 가져오기
	public String getComuNick(int seq){
		
		String m_nick=getSqlSession().selectOne("writerOfComu", seq);
		
		return m_nick;
	}
	
	//게시판 시퀀스 최대값 구하기- 글 추가후 그 콘텐츠로 이동하려고
	public int getSeqBoard(){
		
		return getSqlSession().selectOne("seqmaxofComu");
	}
	

	//게시글 삭제
	public int deleteBoard(int b_seq){
		
		return getSqlSession().delete("deleteOfComu", b_seq);
	}
	
	
	//게시글 수정
		public int updateBoard(ComuDTO dto){
			
			return getSqlSession().update("updateOfComu", dto);
		}
	
}
