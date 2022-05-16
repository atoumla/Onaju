package com.myspring.Onaju.host.goods.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.myspring.Onaju.host.goods.vo.HostGoodsVO;
import com.myspring.Onaju.host.goods.vo.HostInfoVO;


public interface HostGoodsService {

	public Map<String,List<HostGoodsVO>> listGoods(Map searchMap) throws Exception;
	public Map goodsDetail(String room_code) throws Exception;
	
	
	/* 이정아 작성 */
	
	public List<HostInfoVO> h_login(String h_id) throws Exception;
	
	public void addHostInfo(HostInfoVO hostInfoVO) throws Exception;
	
	public List<HostInfoVO> hostInfoFormlist(String _h_id) throws Exception;
	
	public int  addNewGoods(Map newGoodsMap) throws Exception;
	
	public void addNewGoodsImage(List imageFileList) throws Exception;
	
	
}
