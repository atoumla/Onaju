package com.myspring.Onaju.cart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.myspring.Onaju.cart.dao.CartDAO;
import com.myspring.Onaju.cart.vo.CartVO;



@Service("cartService")
@Transactional(propagation=Propagation.REQUIRED)
public class CartServiceImpl implements CartService{
	@Autowired
	private CartDAO cartDAO;
	
	@Override
	public List<CartVO> listMyCartGoods(String u_id) throws Exception{
		return cartDAO.selectMyCartGoodsList(u_id);
	}
	@Override
	public void addCart(CartVO cartVO) throws Exception{
		cartDAO.insertNewCart(cartVO);
	}
	@Override
	public void removeCartGoods(int cart_id) throws Exception{
		cartDAO.deleteCartGoods(cart_id);
	}
}
