package com.myspring.Onaju.admin.adminMember.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.myspring.Onaju.member.vo.MemberVO;

public interface AdminMemberService {
	public List<MemberVO> listMembers(MemberVO vo) throws DataAccessException;
	public int memberListTotal(MemberVO vo) throws Exception;
	public MemberVO memberDetail(String u_id) throws Exception;
	public int memberUpdate(MemberVO vo) throws Exception;
}
