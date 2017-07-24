package buy.model;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import vendor.model.VendorDto;

public class BuyDao extends SqlSessionDaoSupport{
	public int getTotalcount()
	{
		return getSqlSession().selectOne("countOfBuy");
	}
	
	public void insertMyboard(BuyDto dto)
	{
		getSqlSession().insert("insertOfBuy", dto);
	}
	
	public List<BuyDto> getList(int start,int perpage)
	{
		HashMap<String, Integer> map=new HashMap<String, Integer>();
		map.put("start", start);
		map.put("perpage", perpage);
		
		return getSqlSession().selectList("pageingListOfBuy", map);		
	}
	
	public BuyDto getData(int num)
	{
		return getSqlSession().selectOne("dataOfBuy", num);
	}
	
	
	
	public void updateReadcount(int num) {
		// TODO Auto-generated method stub
		getSqlSession().update("updateReadcountOfBuy", num);
	}
	
	
	//게시글 삭제
		public int deleteBoard(int num){
			
			return getSqlSession().delete("deleteOfBuy", num);
		}
		
		
		//게시글 수정
			public int updateBoard(BuyDto dto){
				
				return getSqlSession().update("updateOfBuy", dto);
			}
			
			
	
			//작성자 닉네임 가져오기
			public String getNick(int num){
				
				String m_nick=getSqlSession().selectOne("writerOfBuy", num);
				
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
	






