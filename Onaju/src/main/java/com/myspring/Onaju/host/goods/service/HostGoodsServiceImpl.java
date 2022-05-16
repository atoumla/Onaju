package com.myspring.Onaju.host.goods.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.myspring.Onaju.host.goods.dao.HostGoodsDAO;
import com.myspring.Onaju.host.goods.vo.HostGoodsVO;
import com.myspring.Onaju.host.goods.vo.HostImageFileVO;
import com.myspring.Onaju.host.goods.vo.HostInfoVO;
import com.myspring.Onaju.host.vo.HostVO;


@Service("hostGoodsService")
@Transactional(propagation=Propagation.REQUIRED)
public class HostGoodsServiceImpl implements HostGoodsService{
	@Autowired
	private HostGoodsDAO goodsDAO;

	public Map<String,List<HostGoodsVO>> listGoods(Map searchMap) throws Exception {
		Map<String,List<HostGoodsVO>> goodsMap=new HashMap<String,List<HostGoodsVO>>();
		System.out.println("서비스 들어옴");

		List<HostGoodsVO> goodsList=goodsDAO.selectGoodsList(searchMap);
		System.out.println("다오끝");

		goodsMap.put("goodsList",goodsList);
	
		return goodsMap;
	}


	public Map goodsDetail(String room_code) throws Exception {
		Map hostgoodsMap=new HashMap();
		HostGoodsVO hostgoodsVO = goodsDAO.selectGoodsDetail(room_code);
		hostgoodsMap.put("goodsVO", hostgoodsVO);
		
		 List<HostImageFileVO> imageList =goodsDAO.selectGoodsDetailImage(room_code);
		 hostgoodsMap.put("imageList", imageList);
		
		return hostgoodsMap;
	}

	
	
	
	/* 이정아 작성 */
	
	@Override
	public List<HostInfoVO> h_login(String h_id) throws Exception{
		return goodsDAO.hostLogin(h_id);
			
	}
	
	
	@Override
	public void addHostInfo(HostInfoVO hostInfoVO) throws Exception{
		goodsDAO.insertNewHostInfo(hostInfoVO);
	}
	
	public List<HostInfoVO> hostInfoFormlist(String _h_id) throws Exception{
		return goodsDAO.hostInfoFormlist(_h_id);
	}
	
	
	
	@Override
	public int addNewGoods(Map newGoodsMap) throws Exception {
		int room_code = goodsDAO.insertNewGoods(newGoodsMap);
		
		  ArrayList<HostImageFileVO> imageFileList = (ArrayList) newGoodsMap.get("imageFileList"); 
		  for (HostImageFileVO imageFileVO : imageFileList) { imageFileVO.setRoom_code(room_code); }
		  goodsDAO.insertGoodsImageFile(imageFileList);
		 
		System.out.println(room_code);
		return room_code;
	}
	
	@Override
	public void addNewGoodsImage(List imageFileList) throws Exception{
		goodsDAO.insertGoodsImageFile(imageFileList);
	}
	
	
	

}
