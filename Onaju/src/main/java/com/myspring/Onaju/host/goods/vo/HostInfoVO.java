package com.myspring.Onaju.host.goods.vo;

import java.util.Date;

import org.springframework.stereotype.Component;
@Component("hostInfoVO")
public class HostInfoVO {
	private int h_code;
	private String h_id;
	private String hostInfo_name;
	private String h_sellerNum;
	private String h_accountNum;
	private String zipcode;
	private String roadAddress;
	private String numberAddress;
	private String restAddress;
	private String host_type;
	private String room_count;
	private Date creDate;

	public HostInfoVO() {
		System.out.println("HostInfoVO 생성자 메서드 호출");
	}

	public int getH_code() {
		return h_code;
	}

	public void setH_code(int h_code) {
		this.h_code = h_code;
	}

	public String getH_id() {
		return h_id;
	}

	public void setH_id(String h_id) {
		this.h_id = h_id;
	}

	public String getHostInfo_name() {
		return hostInfo_name;
	}

	public void setHostInfo_name(String hostInfo_name) {
		this.hostInfo_name = hostInfo_name;
	}

	public String getH_sellerNum() {
		return h_sellerNum;
	}

	public void setH_sellerNum(String h_sellerNum) {
		this.h_sellerNum = h_sellerNum;
	}

	public String getH_accountNum() {
		return h_accountNum;
	}

	public void setH_accountNum(String h_accountNum) {
		this.h_accountNum = h_accountNum;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getRoadAddress() {
		return roadAddress;
	}

	public void setRoadAddress(String roadAddress) {
		this.roadAddress = roadAddress;
	}

	public String getNumberAddress() {
		return numberAddress;
	}

	public void setNumberAddress(String numberAddress) {
		this.numberAddress = numberAddress;
	}

	public String getRestAddress() {
		return restAddress;
	}

	public void setRestAddress(String restAddress) {
		this.restAddress = restAddress;
	}

	public String getHost_type() {
		return host_type;
	}

	public void setHost_type(String host_type) {
		this.host_type = host_type;
	}

	public String getRoom_count() {
		return room_count;
	}

	public void setRoom_count(String room_count) {
		this.room_count = room_count;
	}

	public Date getCreDate() {
		return creDate;
	}

	public void setCreDate(Date creDate) {
		this.creDate = creDate;
	}

	

	

}
