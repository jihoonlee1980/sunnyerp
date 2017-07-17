package company.model;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import company.model.CompanyDto;

public class CompanyDao extends SqlSessionDaoSupport{
	public int getTotalcount()
	{
		return getSqlSession().selectOne("countOfCompany");
	}
	
	public void insertMyboard(CompanyDto dto)
	{
		getSqlSession().insert("insertOfCompany", dto);
	}
	
	public List<CompanyDto> getList(int start,int perpage)
	{
		HashMap<String, Integer> map=new HashMap<String, Integer>();
		map.put("start", start);
		map.put("perpage", perpage);
		
		return getSqlSession().selectList("pageingListOfCompany", map);		
	}
	
	public CompanyDto getData(int num)
	{
		return getSqlSession().selectOne("dataOfCompany", num);
	}
	
	
	
	public void updateReadcount(int num) {
		// TODO Auto-generated method stub
		getSqlSession().update("updateReadcountOfCompany", num);
	}
	
	
	//게시글 삭제
		public int deleteBoard(int num){
			
			return getSqlSession().delete("deleteOfCompany", num);
		}
		
		
		//게시글 수정
			public int updateBoard(CompanyDto dto){
				
				return getSqlSession().update("updateOfCompany", dto);
			}
			
			
	
			//작성자 닉네임 가져오기
			public String getNick(int num){
				
				String m_nick=getSqlSession().selectOne("writerOfCompany", num);
				
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
	






