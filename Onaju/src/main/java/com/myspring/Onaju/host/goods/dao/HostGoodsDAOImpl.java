package com.myspring.Onaju.host.goods.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.Onaju.host.goods.vo.HostGoodsVO;
import com.myspring.Onaju.host.goods.vo.HostImageFileVO;
import com.myspring.Onaju.host.goods.vo.HostInfoVO;
import com.myspring.Onaju.host.vo.HostVO;

@Repository("goodsDAO")
public class HostGoodsDAOImpl implements HostGoodsDAO{
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<HostGoodsVO> selectGoodsList(Map searchMap) throws DataAccessException {
		System.out.println("다오 진입 후 매퍼");

		List<HostGoodsVO> goodsList = (ArrayList) sqlSession.selectList("mapper.hostGoods.hostGoodsList", searchMap);
		return goodsList;

	}

	@Override
	public HostGoodsVO selectGoodsDetail(String room_code) throws DataAccessException {
		System.out.println(room_code);
		HostGoodsVO hostgoodsVO = (HostGoodsVO) sqlSession.selectOne("mapper.hostGoods.hostGoodsDetail", room_code);
		System.out.println(hostgoodsVO);

		return hostgoodsVO;
	}

	@Override
	public List<HostImageFileVO> selectGoodsDetailImage(String room_code) throws DataAccessException {
		List<HostImageFileVO> imageList = (ArrayList) sqlSession.selectList("mapper.hostGoods.selectHostGoodsDetailImage",
				room_code);
		return imageList;
	}
	
	
	
	
	/* 이정아 작성 */

	@Override
	public List<HostInfoVO> hostLogin(String h_id) throws DataAccessException{
		
		System.out.println("호스트나와랑");
		List<HostInfoVO> hostInfoList = (ArrayList)sqlSession.selectList("mapper.hostGoods.hostLogin",h_id); 
		   System.out.println(hostInfoList);
		return hostInfoList;

	}
	
	
	@Override
	public void insertNewHostInfo(HostInfoVO hostInfoVO) throws DataAccessException{
		
		sqlSession.insert("mapper.hostGoods.insertNewHostInfo",hostInfoVO);
	}
	
	@Override
	public List<HostInfoVO> hostInfoFormlist(String _h_id) throws DataAccessException {
		List<HostInfoVO>  hostInfoFormlist = (List)sqlSession.selectList("mapper.hostGoods.selectHostInfoList",_h_id);
		return hostInfoFormlist;
	}

	

	@Override
	 public int insertNewGoods(Map newGoodsMap) throws DataAccessException {

		  sqlSession.insert("mapper.hostGoods.insertNewGoods",newGoodsMap);
		

		  return Integer.parseInt(String.valueOf(newGoodsMap.get("room_code")));
		 }
	
	@Override
	public void insertGoodsImageFile(List fileList) throws DataAccessException {
		for (int i = 0; i < fileList.size(); i++) {
			HostImageFileVO imageFileVO = (HostImageFileVO) fileList.get(i);
			sqlSession.insert("mapper.hostGoods.insertGoodsImageFile", imageFileVO);
		}
	}

	
	
}
