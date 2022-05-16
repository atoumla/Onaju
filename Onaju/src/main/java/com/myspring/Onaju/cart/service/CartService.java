package com.myspring.Onaju.cart.service;

import java.util.List;

import com.myspring.Onaju.cart.vo.CartVO;

public interface CartService {
	public List<CartVO> listMyCartGoods(String u_id) throws Exception;
	public void addCart(CartVO cartVO) throws Exception;
	public void removeCartGoods(int cart_id) throws Exception;

}
