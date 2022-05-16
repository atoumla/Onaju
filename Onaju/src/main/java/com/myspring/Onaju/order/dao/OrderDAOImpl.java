package com.myspring.Onaju.order.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.Onaju.order.vo.OrderVO;



@Repository("orderDAO")
public class OrderDAOImpl implements OrderDAO{
	@Autowired
	private SqlSession sqlSession;
	

	public void insertNewOrder(OrderVO myOrderList) throws DataAccessException{
	
			
			sqlSession.insert("mapper.order.insertNewOrder",myOrderList);
	
		
	}	

	public void removeGoodsFromCart(OrderVO orderVO)throws DataAccessException{
		sqlSession.delete("mapper.order.deleteGoodsFromCart",orderVO);
	}
	
	public void removeGoodsFromCart(List<OrderVO> myOrderList)throws DataAccessException{
		for(int i=0; i<myOrderList.size();i++){
			OrderVO orderVO =(OrderVO)myOrderList.get(i);
			sqlSession.delete("mapper.order.deleteGoodsFromCart",orderVO);		
		}
	}	

	private String selectOrderID() throws DataAccessException{
		return sqlSession.selectOne("mapper.order.selectOrderID");
		
	}
}
