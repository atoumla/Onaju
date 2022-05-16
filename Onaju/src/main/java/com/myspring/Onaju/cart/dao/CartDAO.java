package com.myspring.Onaju.cart.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.myspring.Onaju.cart.vo.CartVO;

public interface CartDAO {
	public List<CartVO> selectMyCartGoodsList(String u_id) throws DataAccessException;

	public void insertNewCart(CartVO cartVO) throws DataAccessException;
	public void deleteCartGoods(int cart_id) throws DataAccessException;
}
