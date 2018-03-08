package com.houseleas.entity;

import java.io.Serializable;

/**
 * 指定租房信息实体
 * 
 * @author Administrator
 * @date 2018年3月8日
 */
public class AppoinThouseModel implements Serializable {
	private static final long serialVersionUID = -2526871591987789154L;

	private Long seq;// 主键
	private Long region;// 区域
	private String price;// 房屋价格
	private String phone;// 联系电话
	private String remarks;// 备注

	public Long getSeq() {
		return seq;
	}

	public void setSeq(Long seq) {
		this.seq = seq;
	}

	public Long getRegion() {
		return region;
	}

	public void setRegion(Long region) {
		this.region = region;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

}
