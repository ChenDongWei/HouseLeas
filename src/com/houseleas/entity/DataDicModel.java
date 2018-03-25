package com.houseleas.entity;

import java.io.Serializable;

/**
 * 数据字典实体类
 * @author Administrator
 *
 */
public class DataDicModel implements Serializable {
	private static final long serialVersionUID = 6169605464544432005L;
	
	private Integer seq; // 编号
	private String dataDicName; // 数据字典名称
	private String dataDicValue; // 数据字典值

	public Integer getSeq() {
		return seq;
	}

	public void setSeq(Integer seq) {
		this.seq = seq;
	}

	public String getDataDicName() {
		return dataDicName;
	}

	public void setDataDicName(String dataDicName) {
		this.dataDicName = dataDicName;
	}

	public String getDataDicValue() {
		return dataDicValue;
	}

	public void setDataDicValue(String dataDicValue) {
		this.dataDicValue = dataDicValue;
	}

}
