package com.myspring.Onaju.admin.adminMember.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.Onaju.member.vo.MemberVO;

@Repository("adminMemberDAO")
public class AdminMemberDAOImpl implements AdminMemberDAO {
	@Autowired
	private SqlSession sqlSession;	
		
	@Override
	public List<MemberVO> selectAllMemberList(MemberVO vo) throws DataAccessException {
		return sqlSession.selectList("mapper.admin.member.selectAllMemberList", vo);	
	}

	@Override
	public int selectAllMemberListTotal(MemberVO vo) throws DataAccessException {
		return (Integer)sqlSession.selectOne("mapper.admin.member.selectAllMemberTotal", vo);
	}

	@Override
	public MemberVO selectMemberDetail(String u_id) throws DataAccessException {
		return sqlSession.selectOne("mapper.admin.member.selectMemberDetail", u_id);
	}

	@Override
	public int memberUpdate(MemberVO vo) throws DataAccessException {
		return sqlSession.update("mapper.admin.member.selectMemberUpdate", vo);
	}
	
}
