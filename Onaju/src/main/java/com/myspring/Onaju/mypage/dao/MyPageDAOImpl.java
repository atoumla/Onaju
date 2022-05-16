package com.myspring.Onaju.mypage.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.Onaju.cart.vo.CartVO;
import com.myspring.Onaju.member.vo.MemberVO;
import com.myspring.Onaju.order.vo.OrderVO;

@Repository("myPageDAO")
public class MyPageDAOImpl implements MyPageDAO {
	@Autowired
	private SqlSession sqlSession;


	public List<OrderVO> selectMyOrderGoodsList(String u_id) throws DataAccessException {
		List<OrderVO> orderGoodsList = (List) sqlSession.selectList("mapper.mypage.selectMyOrderGoodsList", u_id);
		return orderGoodsList;
	}
	public void updateMyInfo(Map memberMap) throws DataAccessException {
		sqlSession.update("mapper.mypage.updateMyInfo", memberMap);
	}

	public MemberVO selectMyDetailInfo(String u_id) throws DataAccessException {
		MemberVO memberVO = (MemberVO) sqlSession.selectOne("mapper.mypage.selectMyDetailInfo", u_id);
		return memberVO;

	}


	public void deleteMember(String u_id) throws DataAccessException {
		sqlSession.delete("mapper.mypage.deleteMember", u_id);
	}
	public MemberVO selectdeleteMemberInfo(String u_id) throws DataAccessException{
		MemberVO memberVO=(MemberVO)sqlSession.selectOne("mapper.mypage.selectdeleteMemberInfo",u_id);
		return memberVO;
		
	}
	
}
