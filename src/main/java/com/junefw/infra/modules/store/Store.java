package com.junefw.infra.modules.store;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Store {
	// Store
	private String stifSeq;
	private String stifname;
	private String stifDelNy;
	private String stifdesc;
	private String stifAddress1;
	private String stifAddress2;
	private String stifOC;
	private String stifFoodTypeCd;

	
	// storeTel
	private String stphSeq;
	private String stphDelNy;
	private String stphNumberTypeCd;
	private String stphNumber;
	private String StoreInfo_stifSeq;
	
	// common
	private Date regDateTime;
	private Date modDateTime;
	
	static List<Store> cachedCodeArrayList = new ArrayList<Store>();
	private String ifcdName;
	
	
	
	// --------------------------
	
	
	public String getStifSeq() {
		return stifSeq;
	}
	public void setStifSeq(String stifSeq) {
		this.stifSeq = stifSeq;
	}
	public String getStifname() {
		return stifname;
	}
	public void setStifname(String stifname) {
		this.stifname = stifname;
	}
	public String getStifDelNy() {
		return stifDelNy;
	}
	public void setStifDelNy(String stifDelNy) {
		this.stifDelNy = stifDelNy;
	}
	public String getStifdesc() {
		return stifdesc;
	}
	public void setStifdesc(String stifdesc) {
		this.stifdesc = stifdesc;
	}
	public String getStifAddress1() {
		return stifAddress1;
	}
	public void setStifAddress1(String stifAddress1) {
		this.stifAddress1 = stifAddress1;
	}
	public String getStifAddress2() {
		return stifAddress2;
	}
	public void setStifAddress2(String stifAddress2) {
		this.stifAddress2 = stifAddress2;
	}
	public String getStifOC() {
		return stifOC;
	}
	public void setStifOC(String stifOC) {
		this.stifOC = stifOC;
	}
	public String getStifFoodTypeCd() {
		return stifFoodTypeCd;
	}
	public void setStifFoodTypeCd(String stifFoodTypeCd) {
		this.stifFoodTypeCd = stifFoodTypeCd;
	}
	public Date getRegDateTime() {
		return regDateTime;
	}
	public void setRegDateTime(Date regDateTime) {
		this.regDateTime = regDateTime;
	}
	public Date getModDateTime() {
		return modDateTime;
	}
	public void setModDateTime(Date modDateTime) {
		this.modDateTime = modDateTime;
	}
	public static List<Store> getCachedCodeArrayList() {
		return cachedCodeArrayList;
	}
	public static void setCachedCodeArrayList(List<Store> cachedCodeArrayList) {
		Store.cachedCodeArrayList = cachedCodeArrayList;
	}
	public String getIfcdName() {
		return ifcdName;
	}
	public void setIfcdName(String ifcdName) {
		this.ifcdName = ifcdName;
	}
	public String getStphSeq() {
		return stphSeq;
	}
	public void setStphSeq(String stphSeq) {
		this.stphSeq = stphSeq;
	}
	public String getStphDelNy() {
		return stphDelNy;
	}
	public void setStphDelNy(String stphDelNy) {
		this.stphDelNy = stphDelNy;
	}
	public String getStphNumberTypeCd() {
		return stphNumberTypeCd;
	}
	public void setStphNumberTypeCd(String stphNumberTypeCd) {
		this.stphNumberTypeCd = stphNumberTypeCd;
	}
	public String getStphNumber() {
		return stphNumber;
	}
	public void setStphNumber(String stphNumber) {
		this.stphNumber = stphNumber;
	}
	public String getStoreInfo_stifSeq() {
		return StoreInfo_stifSeq;
	}
	public void setStoreInfo_stifSeq(String storeInfo_stifSeq) {
		StoreInfo_stifSeq = storeInfo_stifSeq;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
