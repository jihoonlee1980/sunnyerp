package myboard.model;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import spring.model.AnswerDto;
import community.model.ComuDTO;

public interface AnswerMyboardDao {
	public int getRef();
	public int insertAnswer(MyboardAnswerDto dto);
	public List<MyboardAnswerDto> getList(int num);
	public int getTotalCount(int num);
	public MyboardAnswerDto getData1(int pk);
	public boolean isEqualPass(int num,String pass);
	public void deleteAnswer(int num);
	public void deleteNumAnswer(int num);	
	public void updateAnswer(MyboardAnswerDto dto);
	public void updateRestep(int ref,int re_step);
	public List<MyboardAnswerDto> getAllList(int num);
	
}
	






