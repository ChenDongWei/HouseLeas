package com.houseleas.entity;

import java.io.Serializable;

/**
 * 客户实体
 * 
 * @author Administrator
 * @date 2018年1月26日
 */
public class CustomerModel implements Serializable {
	private static final long serialVersionUID = 8427169725229434398L;
	
	private Long seq;// 编号
	private String mobilePhone;// 客户手机(登录帐号)
	private String password;// 密码
	private String trueName;// 客户姓名
	private String idCard;// 身份证号
	private String telNumber;// 固定电话
	private String email;// 邮箱
	private Long type;//客户类型  1-普通租户   2-房东
	private Long age;//年龄
	private Long sex;//性别
	private String qq;//QQ帐号
	
	public Long getSeq() {
		return seq;
	}
	public void setSeq(Long seq) {
		this.seq = seq;
	}
	public String getMobilePhone() {
		return mobilePhone;
	}
	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTrueName() {
		return trueName;
	}
	public void setTrueName(String trueName) {
		this.trueName = trueName;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public String getTelNumber() {
		return telNumber;
	}
	public void setTelNumber(String telNumber) {
		this.telNumber = telNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Long getType() {
		return type;
	}
	public void setType(Long type) {
		this.type = type;
	}
	public Long getAge() {
		return age;
	}
	public void setAge(Long age) {
		this.age = age;
	}
	public Long getSex() {
		return sex;
	}
	public void setSex(Long sex) {
		this.sex = sex;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}

}
