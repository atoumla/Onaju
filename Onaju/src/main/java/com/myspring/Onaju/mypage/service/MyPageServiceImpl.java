	package com.myspring.Onaju.mypage.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.myspring.Onaju.cart.vo.CartVO;
import com.myspring.Onaju.member.vo.MemberVO;
import com.myspring.Onaju.mypage.dao.MyPageDAO;
import com.myspring.Onaju.order.vo.OrderVO;

@Service("myPageService")
@Transactional(propagation=Propagation.REQUIRED)
public class MyPageServiceImpl  implements MyPageService{
	@Autowired
	private MyPageDAO myPageDAO;


	public List<OrderVO> listMyOrderGoods(String u_id) throws Exception{
		return myPageDAO.selectMyOrderGoodsList(u_id);
	}

	
	public MemberVO  modifyMyInfo(Map memberMap) throws Exception{
		 String u_id=(String)memberMap.get("u_id");
		 myPageDAO.updateMyInfo(memberMap);
		 return myPageDAO.selectMyDetailInfo(u_id);
	}
	
	public MemberVO myDetailInfo(String u_id) throws Exception{
		return myPageDAO.selectMyDetailInfo(u_id);
	}
	public void removeMember(String u_id) throws Exception{
		myPageDAO.deleteMember(u_id);
	}

public MemberVO deleteMemberInfo(String u_id) throws Exception{
		return myPageDAO.selectdeleteMemberInfo(u_id);
	}
}
