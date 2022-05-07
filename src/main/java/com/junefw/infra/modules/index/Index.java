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
	private double stlcLat;
	private double stlcLng;
	private String StoreInfo_stifSeq;
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
	
	
	//image
	private String Seq;
	private String type;
	private String defaultNy;
	private String sort;
	private String originalName;
	private String uuidName;
	private String ext;
	private String size;
	private String delNy;
	private String pseq;
	private String year;
	private String month;
	private String day;
	
	
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
	

	public double getStlcLat() {
		return stlcLat;
	}
	public void setStlcLat(double stlcLat) {
		this.stlcLat = stlcLat;
	}
	public double getStlcLng() {
		return stlcLng;
	}
	public void setStlcLng(double stlcLng) {
		this.stlcLng = stlcLng;
	}
	public String getSeq() {
		return Seq;
	}
	public void setSeq(String seq) {
		Seq = seq;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDefaultNy() {
		return defaultNy;
	}
	public void setDefaultNy(String defaultNy) {
		this.defaultNy = defaultNy;
	}
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	public String getOriginalName() {
		return originalName;
	}
	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}
	public String getUuidName() {
		return uuidName;
	}
	public void setUuidName(String uuidName) {
		this.uuidName = uuidName;
	}
	public String getExt() {
		return ext;
	}
	public void setExt(String ext) {
		this.ext = ext;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getDelNy() {
		return delNy;
	}
	public void setDelNy(String delNy) {
		this.delNy = delNy;
	}
	public String getPseq() {
		return pseq;
	}
	public void setPseq(String pseq) {
		this.pseq = pseq;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getStoreInfo_stifSeq() {
		return StoreInfo_stifSeq;
	}
	public void setStoreInfo_stifSeq(String storeInfo_stifSeq) {
		StoreInfo_stifSeq = storeInfo_stifSeq;
	}
	
	
	
}
