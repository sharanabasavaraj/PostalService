package com.postoffice.pojo;

import java.util.Date;

//import java.util.Timer;

public class ParcelDetails {

	private String name;
	private String pType;
	private float weight;
	private String date;
	private String time;
	private String format;
	private String aType;
	private String address;

	public ParcelDetails() {

	}

	public ParcelDetails(String name, String pType, float weight, String date,
			String time, String format, String aType, String address) {
		super();
		this.name = name;
		this.pType = pType;
		this.weight = weight;
		this.date = date;
		this.time = time;
		this.format = format;
		this.aType = aType;
		this.address = address;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getpType() {
		return pType;
	}

	public void setpType(String pType) {
		this.pType = pType;
	}

	public float getWeight() {
		return weight;
	}

	public void setWeight(float weight) {
		this.weight = weight;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getFormat() {
		return format;
	}

	public void setFormat(String format) {
		this.format = format;
	}

	public String getaType() {
		return aType;
	}

	public void setaType(String aType) {
		this.aType = aType;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "ParcelDetails [name=" + name + ", pType=" + pType + ", weight="
				+ weight + ", date=" + date + ", time=" + time + ", format="
				+ format + ", aType=" + aType + ", address=" + address + "]";
	}

	
	
}
