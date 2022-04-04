package com.junefw.infra.modules.store;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Store {
	// Store
	private String stifSeq;
	private String stifName;
	private String stifDelNy;
	private String stifDesc;
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
	
	// storeLocation
	private String stlcSeq;
	private String stlcDelNy;
	private String stlcName;
	private String stlcIat;
	private String stlcIng;
	/* private String StoreInfo_stifSeq; */
	
	// storeMenu
	private String stmnSeq;
	private String stmnName;
	private String stmnPrice;
	private String stmnDelNy;
	
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
	public String getStifName() {
		return stifName;
	}
	public void setStifName(String stifName) {
		this.stifName = stifName;
	}
	public String getStifDelNy() {
		return stifDelNy;
	}
	public void setStifDelNy(String stifDelNy) {
		this.stifDelNy = stifDelNy;
	}
	public String getStifDesc() {
		return stifDesc;
	}
	public void setStifDesc(String stifDesc) {
		this.stifDesc = stifDesc;
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
	public String getStlcSeq() {
		return stlcSeq;
	}
	public void setStlcSeq(String stlcSeq) {
		this.stlcSeq = stlcSeq;
	}
	public String getStlcDelNy() {
		return stlcDelNy;
	}
	public void setStlcDelNy(String stlcDelNy) {
		this.stlcDelNy = stlcDelNy;
	}
	public String getStlcName() {
		return stlcName;
	}
	public void setStlcName(String stlcName) {
		this.stlcName = stlcName;
	}
	public String getStlcIat() {
		return stlcIat;
	}
	public void setStlcIat(String stlcIat) {
		this.stlcIat = stlcIat;
	}
	public String getStlcIng() {
		return stlcIng;
	}
	public void setStlcIng(String stlcIng) {
		this.stlcIng = stlcIng;
	}
	public String getStmnName() {
		return stmnName;
	}
	public void setStmnName(String stmnName) {
		this.stmnName = stmnName;
	}
	public String getStmnPrice() {
		return stmnPrice;
	}
	public void setStmnPrice(String stmnPrice) {
		this.stmnPrice = stmnPrice;
	}
	public String getStmnDelNy() {
		return stmnDelNy;
	}
	public void setStmnDelNy(String stmnDelNy) {
		this.stmnDelNy = stmnDelNy;
	}
	public String getStmnSeq() {
		return stmnSeq;
	}
	public void setStmnSeq(String stmnSeq) {
		this.stmnSeq = stmnSeq;
	}
	
	


	
	
	
	
	
	
	
	
	
	
	
}
