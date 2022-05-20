package com.myspring.Onaju.host.community.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.myspring.Onaju.host.community.vo.HostCommunityVO;

public interface HostCommunityDAO {
	public HostCommunityVO selectCommunityView(int room_code) throws DataAccessException;
	public List slideView(int room_code) throws DataAccessException;
	public List<HostCommunityVO> selectCommunityList(String h_id) throws DataAccessException;
	public void insertNewCommunity(HostCommunityVO hostCommunityVO) throws DataAccessException;
	public List<HostCommunityVO> hostAllCommunityList(String h_id) throws DataAccessException;
	public HostCommunityVO modCommunity(int cmnNum) throws DataAccessException;
	public void deleteHostCommunity(int cmnNum) throws DataAccessException;
	
}
