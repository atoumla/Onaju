package com.myspring.Onaju.admin.adminMember.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.myspring.Onaju.admin.adminMember.dao.AdminMemberDAO;
import com.myspring.Onaju.member.vo.MemberVO;

@Service("adminMemberService")
public class AdminMemberServiceImpl implements AdminMemberService{
	@Autowired
	private AdminMemberDAO adminMemberDAO;
	
	@Override
	public List<MemberVO> listMembers(MemberVO vo) throws DataAccessException {
		return adminMemberDAO.selectAllMemberList(vo);
	}

	@Override
	public int memberListTotal(MemberVO vo) throws Exception {
		return adminMemberDAO.selectAllMemberListTotal(vo);
	}

	@Override
	public MemberVO memberDetail(String u_id) throws Exception {
		return adminMemberDAO.selectMemberDetail(u_id);
		 
	}

	@Override
	public int memberUpdate(MemberVO vo) throws Exception {
		return adminMemberDAO.memberUpdate(vo);
	}
}
