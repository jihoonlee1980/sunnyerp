package myboard.model;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;




import myboard.model.AnswerMyboardDao;
import myboard.model.MyboardAnswerDto;
import myboard.model.MyboardAnswerDao;



public class MyboardAnswerDao extends SqlSessionDaoSupport  {
	/*public int getTotalcount()
	{
		return getSqlSession().selectOne("countOfMyboard");
	}*/
	
	public void insertMyboard(MyboardAnswerDto myadto)
	{
		
		/*int num=myadto.getNum();
		
		myadto.setNum(num);*/
	
		
		getSqlSession().insert("ainsertOfMyboard", myadto);
	

		
	}
	
	
	/*public void insertMyboard(MyboardDto dto)
	{
		getSqlSession().insert("insertOfMyboard", dto);
	}
	*/
	
	public List<MyboardAnswerDto> getList1(int pk)
	{
		HashMap<String, Integer> map=new HashMap<String, Integer>();
		map.put("pk", pk);
		
		
		return getSqlSession().selectList("apageingListOfMyboard", map);		
	}
	
	public MyboardAnswerDto getData1(int pk)
	{
		return getSqlSession().selectOne("adataOfMyboard", pk);
	}

	public void ainsertOfMyboard(MyboardAnswerDto adto) {
		// TODO Auto-generated method stub
		
	}

	public int getRef() {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insertAnswer(MyboardAnswerDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}



	public int getTotalCount(int num) {
		// TODO Auto-generated method stub
		return 0;
	}

/*	public MyboardAnswerDto getData(int num) {
		// TODO Auto-generated method stub
		return null;
	}*/

	public boolean isEqualPass(int num, String pass) {
		// TODO Auto-generated method stub
		return false;
	}

	public void deleteAnswer(int num) {
		// TODO Auto-generated method stub
		
	}

	public void deleteNumAnswer(int num) {
		// TODO Auto-generated method stub
		
	}

	public void updateAnswer(MyboardAnswerDto dto) {
		// TODO Auto-generated method stub
		
	}

	public void updateRestep(int ref, int re_step) {
		// TODO Auto-generated method stub
		
	}

	public List<MyboardAnswerDto> getAllList(int num) {
		// TODO Auto-generated method stub
		return null;
	}

	/*public List<AnswerDto> getList(int num) {
		// TODO Auto-generated method stub
		return null;
	}*/

	/*public List<AnswerDto> getList(int num) {
		// TODO Auto-generated method stub
		return null;
	}
*/
	public List<MyboardAnswerDto> getList(int num) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	/*public void updateReadcount(int num) {
		// TODO Auto-generated method stub
		getSqlSession().update("updateReadcountOfMyBoard", num);
	}*/
	
	
	//게시글 삭제
		/*public int deleteBoard(int num){
			
			return getSqlSession().delete("deleteOfMyboard", num);
		}*/
		
		
		//게시글 수정
			/*public int updateBoard(MyboardAnswerDto dto){
				
				return getSqlSession().update("updateOfMyboard", dto);
			}*/
			
			
	
			//작성자 닉네임 가져오기
			/*public String getNick(int seq){
				
				String m_nick=getSqlSession().selectOne("writerOfMyboard", seq);
				
				return m_nick;
			}

			public void insertAnswer(MyboardAnswerDto myadto) {
				// TODO Auto-generated method stub
				
			}*/
			
			
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
	






