package com.junefw.infra.modules.index;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Index {
	// Store
	private String stifSeq;
	private String stifName;
	private String stifDelNy;
	private String stifDesc;
	private String stifAddress1;
	private String stifAddress2;
	private String stifOC;
	private String stifFoodTypeCd;
	
	// storeLocation
	private String stlcSeq;
	private String stlcDelNy;
	private String stlcName;
	private double stlcIat;
	private double stlcIng;
	/* private String StoreInfo_stifSeq; */
	
	// storeMenu
	private String stmnSeq;
	private String stmnName;
	private String stmnPrice;
	private String stmnDelNy;
	
	// common
	private Date regDateTime;
	private Date modDateTime;
	
	static List<Index> cachedCodeArrayList = new ArrayList<Index>();
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
	public static List<Index> getCachedCodeArrayList() {
		return cachedCodeArrayList;
	}
	public static void setCachedCodeArrayList(List<Index> cachedCodeArrayList) {
		Index.cachedCodeArrayList = cachedCodeArrayList;
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
	public double getStlcIat() {
		return stlcIat;
	}
	public void setStlcIat(double stlcIat) {
		this.stlcIat = stlcIat;
	}
	public double getStlcIng() {
		return stlcIng;
	}
	public void setStlcIng(double stlcIng) {
		this.stlcIng = stlcIng;
	}
	
	
	
}
