package model;

import java.io.Serializable;

public class OrderBeans implements Serializable{
	private int id;
	private int karubinum;
	private int rosnum;
	private int haraminum;
	private int tannum;
	private int ricenum;
	private int vegnum;
	private int total;
	private String time;


	public OrderBeans() {}

	public OrderBeans(int id, int karubminum, int rosnum, int haraminum,int tannum, int ricenum, int vegnum) {
		this.id = id;
		this.karubinum = karubminum;
		this.rosnum = rosnum;
		this.haraminum = haraminum;
		this.tannum = tannum;
		this.ricenum = ricenum;
		this.vegnum = vegnum;

	}


	public OrderBeans(int karubminum, int rosnum, int haraminum,int tannum, int ricenum, int vegnum ) {

		this.karubinum = karubminum;
		this.rosnum = rosnum;
		this.haraminum = haraminum;
		this.tannum = tannum;
		this.ricenum = ricenum;
		this.vegnum = vegnum;

	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}


	public int getKarubinum() {
		return karubinum;
	}
	public void setKarubinum(int karubinum) {
		this.karubinum = karubinum;
	}
	public int getRosnum() {
		return rosnum;
	}
	public void setRosnum(int rosnum) {
		this.rosnum = rosnum;
	}
	public int getHaraminum() {
		return haraminum;
	}
	public void setHaraminum(int haraminum) {
		this.haraminum = haraminum;
	}
	public int getTannum() {
		return tannum;
	}
	public void setTannum(int tannum) {
		this.tannum = tannum;
	}
	public int getRicenum() {
		return ricenum;
	}
	public void setRicenum(int ricenum) {
		this.ricenum = ricenum;
	}
	public int getVegnum() {
		return vegnum;
	}
	public void setVegnum(int vegnum) {
		this.vegnum = vegnum;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
}
