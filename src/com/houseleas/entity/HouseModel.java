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
	private String house_name;// 房屋名称
	private String house_addr;// 房屋地址
	private Long house_area;// 房屋所属地区
	private Long rent;// 租金
	private Long rent_style;// 出租方式：1-个人 2-合租
	private Long house_type;// 房型：1-单间 2-一室一厅 3-两室一厅 4-三室一厅 5-三室两厅 6-其他
	private Long acreage;// 房屋面积
	private Long orientation;// 朝向：1-东 2-西 3-南 4-北 5-东南 6- 东北 7-西南 8-西北
	private Long floor;// 所在楼层
	private Long all_floor;// 楼高
	private Long decor;// 装修风格：1-简单装修 2-精美装修 3-其他
	private String neighbourhoods;// 所在小区
	private Long pay_way;// 押付方式：1-免押金 2-押一付一 3-押二付一 4-押一付三 5-押二付二 6-其他
	private String house_year;// 建筑年代
	private String describe;// 描述
	private Long category;// 房屋类别：1-平台 2-个人

	public Long getSeq() {
		return seq;
	}

	public void setSeq(Long seq) {
		this.seq = seq;
	}

	public String getHouse_name() {
		return house_name;
	}

	public void setHouse_name(String house_name) {
		this.house_name = house_name;
	}

	public String getHouse_addr() {
		return house_addr;
	}

	public void setHouse_addr(String house_addr) {
		this.house_addr = house_addr;
	}

	public Long getHouse_area() {
		return house_area;
	}

	public void setHouse_area(Long house_area) {
		this.house_area = house_area;
	}

	public Long getRent() {
		return rent;
	}

	public void setRent(Long rent) {
		this.rent = rent;
	}

	public Long getRent_style() {
		return rent_style;
	}

	public void setRent_style(Long rent_style) {
		this.rent_style = rent_style;
	}

	public Long getHouse_type() {
		return house_type;
	}

	public void setHouse_type(Long house_type) {
		this.house_type = house_type;
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

	public Long getAll_floor() {
		return all_floor;
	}

	public void setAll_floor(Long all_floor) {
		this.all_floor = all_floor;
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

	public Long getPay_way() {
		return pay_way;
	}

	public void setPay_way(Long pay_way) {
		this.pay_way = pay_way;
	}

	public String getHouse_year() {
		return house_year;
	}

	public void setHouse_year(String house_year) {
		this.house_year = house_year;
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
