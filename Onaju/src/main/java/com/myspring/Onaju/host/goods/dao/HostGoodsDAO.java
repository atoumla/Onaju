package com.myspring.Onaju.host.goods.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.myspring.Onaju.host.goods.vo.HostGoodsVO;
import com.myspring.Onaju.host.goods.vo.HostImageFileVO;
import com.myspring.Onaju.host.goods.vo.HostInfoVO;



public interface HostGoodsDAO {
	public List<HostGoodsVO> selectGoodsList(Map searchMap) throws DataAccessException;
	public HostGoodsVO selectGoodsDetail(String room_code) throws DataAccessException;
	public List<HostImageFileVO> selectGoodsDetailImage(String room_code) throws DataAccessException;
	
	
	/* 이정아 작성 */ 
	
	public List<HostInfoVO> hostLogin(String h_id) throws DataAccessException;
	
	public void insertNewHostInfo(HostInfoVO hostInfoVO) throws DataAccessException;
	
	public List<HostInfoVO> hostInfoFormlist(String _h_id) throws DataAccessException;
	
	public int insertNewGoods(Map newGoodsMap) throws DataAccessException;
	
	public void insertGoodsImageFile(List fileList)  throws DataAccessException;
}
