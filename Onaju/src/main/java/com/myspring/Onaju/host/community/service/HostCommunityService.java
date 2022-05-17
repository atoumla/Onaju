package com.myspring.Onaju.host.community.service;

import java.util.List;
import java.util.Map;

import com.myspring.Onaju.host.community.vo.HostCommunityVO;

public interface HostCommunityService {
	public Map selectCommunityView(int room_code) throws Exception;
	public List<HostCommunityVO> selectCommunityList(String h_id) throws Exception;
	public List slideView(int room_code) throws Exception;
	public void addNewCommunity(HostCommunityVO hostCommunityVO) throws Exception;
	public List<HostCommunityVO> hostAllCommunityList(String h_id) throws Exception;
}
