package vendor.model;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import vendor.model.VendorDto;

public class VendorDao extends SqlSessionDaoSupport{
	public int getTotalcount()
	{
		return getSqlSession().selectOne("countOfVendor");
	}
	
	public void insertMyboard(VendorDto dto)
	{
		getSqlSession().insert("insertOfVendor", dto);
	}
	
	public List<VendorDto> getList(int start,int perpage)
	{
		HashMap<String, Integer> map=new HashMap<String, Integer>();
		map.put("start", start);
		map.put("perpage", perpage);
		
		return getSqlSession().selectList("pageingListOfVendor", map);		
	}
	
	public VendorDto getData(int num)
	{
		return getSqlSession().selectOne("dataOfVendor", num);
	}
	
	
	
	public void updateReadcount(int num) {
		// TODO Auto-generated method stub
		getSqlSession().update("updateReadcountOfVendor", num);
	}
	
	
	//게시글 삭제
		public int deleteBoard(int num){
			
			return getSqlSession().delete("deleteOfVendor", num);
		}
		
		
		//게시글 수정
			public int updateBoard(VendorDto dto){
				
				return getSqlSession().update("updateOfVendor", dto);
			}
			
			
	
			//작성자 닉네임 가져오기
			public String getNick(int num){
				
				String m_nick=getSqlSession().selectOne("writerOfVendor", num);
				
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
	






