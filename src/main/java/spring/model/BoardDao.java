package spring.model;

import java.util.List;

public interface BoardDao {
	public int insertBoard(BoardDto dto);
	public List<BoardDto> getList(int start,int end);
	public int getTotalCount();
	public int getSequence();
	public BoardDto getData(int num);
	public void updateReadcount(int num);
	public boolean isEqualPass(int num,String pass);
	public void deleteBoard(int num);
	public void updateBoard(BoardDto dto);
	
}
