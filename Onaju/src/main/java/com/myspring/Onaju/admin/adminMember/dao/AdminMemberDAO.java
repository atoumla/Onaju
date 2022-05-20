package com.myspring.Onaju.admin.adminMember.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.myspring.Onaju.member.vo.MemberVO;

public interface AdminMemberDAO {
	public List<MemberVO> selectAllMemberList(MemberVO vo) throws DataAccessException;
	public int selectAllMemberListTotal(MemberVO vo) throws DataAccessException;
	public MemberVO selectMemberDetail(String u_id) throws DataAccessException;
	public int memberUpdate(MemberVO vo) throws DataAccessException;
}
