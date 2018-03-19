package com.houseleas.entity;

import java.io.Serializable;

/**
 * 出租房屋实体
 * 
 * @author Administrator
 * @date 2018年3月18日
 */
public class HouseModel implements Serializable {
	private static final long serialVersionUID = -6150007733980846881L;

	private Long seq;// 编号
	private String houseName;// 房屋名称
	private String houseAddr;// 房屋地址
	private Long houseArea;// 房屋所属地区
	private Long rent;// 租金
	private Long rentStyle;// 出租方式：1-个人 2-合租
	private Long houseType;// 房型：1-单间 2-一室一厅 3-两室一厅 4-三室一厅 5-三室两厅 6-其他
	private Long acreage;// 房屋面积
	private Long orientation;// 朝向：1-东 2-西 3-南 4-北 5-东南 6- 东北 7-西南 8-西北
	private Long floor;// 所在楼层
	private Long allFloor;// 楼高
	private Long decor;// 装修风格：1-简单装修 2-精美装修 3-其他
	private String neighbourhoods;// 所在小区
	private Long payWay;// 押付方式：1-免押金 2-押一付一 3-押二付一 4-押一付三 5-押二付二 6-其他
	private String houseYear;// 建筑年代
	private String describe;// 描述
	private Long category;// 房屋类别：1-平台 2-个人

	public Long getSeq() {
		return seq;
	}

	public void setSeq(Long seq) {
		this.seq = seq;
	}

	public String getHouseName() {
		return houseName;
	}

	public void setHouseName(String houseName) {
		this.houseName = houseName;
	}

	public String getHouseAddr() {
		return houseAddr;
	}

	public void setHouseAddr(String houseAddr) {
		this.houseAddr = houseAddr;
	}

	public Long getHouseArea() {
		return houseArea;
	}

	public void setHouseArea(Long houseArea) {
		this.houseArea = houseArea;
	}

	public Long getRent() {
		return rent;
	}

	public void setRent(Long rent) {
		this.rent = rent;
	}

	public Long getRentStyle() {
		return rentStyle;
	}

	public void setRentStyle(Long rentStyle) {
		this.rentStyle = rentStyle;
	}

	public Long getHouseType() {
		return houseType;
	}

	public void setHouseType(Long houseType) {
		this.houseType = houseType;
	}

	public Long getAcreage() {
		return acreage;
	}

	public void setAcreage(Long acreage) {
		this.acreage = acreage;
	}

	public Long getOrientation() {
		return orientation;
	}

	public void setOrientation(Long orientation) {
		this.orientation = orientation;
	}

	public Long getFloor() {
		return floor;
	}

	public void setFloor(Long floor) {
		this.floor = floor;
	}

	public Long getAllFloor() {
		return allFloor;
	}

	public void setAllFloor(Long allFloor) {
		this.allFloor = allFloor;
	}

	public Long getDecor() {
		return decor;
	}

	public void setDecor(Long decor) {
		this.decor = decor;
	}

	public String getNeighbourhoods() {
		return neighbourhoods;
	}

	public void setNeighbourhoods(String neighbourhoods) {
		this.neighbourhoods = neighbourhoods;
	}

	public Long getPayWay() {
		return payWay;
	}

	public void setPayWay(Long payWay) {
		this.payWay = payWay;
	}

	public String getHouseYear() {
		return houseYear;
	}

	public void setHouseYear(String houseYear) {
		this.houseYear = houseYear;
	}

	public String getDescribe() {
		return describe;
	}

	public void setDescribe(String describe) {
		this.describe = describe;
	}

	public Long getCategory() {
		return category;
	}

	public void setCategory(Long category) {
		this.category = category;
	}

}
