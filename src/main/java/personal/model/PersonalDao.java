package personal.model;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import community.model.ComuDTO;

public class PersonalDao extends SqlSessionDaoSupport{
	public int getTotalcount()
	{
		return getSqlSession().selectOne("countOfPersonal");
	}
	
	public void insertMyboard(PersonalDto dto)
	{
		getSqlSession().insert("insertOfPersonal", dto);
	}
	
	public List<PersonalDto> getList(int start,int perpage)
	{
		HashMap<String, Integer> map=new HashMap<String, Integer>();
		map.put("start", start);
		map.put("perpage", perpage);
		
		return getSqlSession().selectList("pageingListOfPersonal", map);		
	}
	
	public PersonalDto getData(int num)
	{
		return getSqlSession().selectOne("dataOfPersonal", num);
	}
	
	
	
	public void updateReadcount(int num) {
		// TODO Auto-generated method stub
		getSqlSession().update("updateReadcountOfPersonal", num);
	}
	
	
	//게시글 삭제
		public int deleteBoard(int num){
			
			return getSqlSession().delete("deleteOfPersonal", num);
		}
		
		
		//게시글 수정
			public int updateBoard(PersonalDto dto){
				
				return getSqlSession().update("updateOfPersonal", dto);
			}
			
			
	
			//작성자 닉네임 가져오기
			public String getNick(int num){
				
				String m_nick=getSqlSession().selectOne("writerOfPersonal", num);
				
				return m_nick;
			}
			
			
			//아이디 통해서 멤버번호 불러오기
		/*	public int selectseq(String m_id){
				
				int seq = getSqlSession().selectOne("findSeq", m_id);
			
				return seq;
				
			}*/
			
			
			//게시판 시퀀스 최대값 구하기- 글 추가후 그 콘텐츠로 이동하려고
			/*public int getSeqBoard(){
				
				return getSqlSession().selectOne("seqmaxofMyboard");
			}*/
			
		
	}
	






