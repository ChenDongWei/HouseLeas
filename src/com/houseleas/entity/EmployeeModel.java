package com.houseleas.entity;

import java.io.Serializable;

/**
 * 员工实体
 * 
 * @author Administrator
 * @date 2018年1月26日
 */
public class EmployeeModel implements Serializable {
	private static final long serialVersionUID = -9161032380559737033L;

	private Long seq;// 编号
	private String userCode;// 帐号
	private String password;// 密码
	private String name;// 姓名
	private Long sex;// 性别
	private String email;// 邮箱
	private String phoneNumber;// 电话

	public Long getSeq() {
		return seq;
	}

	public void setSeq(Long seq) {
		this.seq = seq;
	}

	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getSex() {
		return sex;
	}

	public void setSex(Long sex) {
		this.sex = sex;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

}
