package com.junefw.infra.modules.store;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Store {
	
private String tableName;
	
// image start
	private String seq;
	private Integer type;
	private Integer defaultNy;
	private Integer sort;
	private String originalName;
	private String uuidName;
	private String fileName;
	private String ext;
	private long size;
	private Integer delNy;
	private String pseq;
	
	
	// regmod
	private String regIp;
	private String regSeq;
	private String regId;
	private Integer regDeviceCd;
	private Date regDateTimeSvr;
	private String modIp;
	private String modSeq;
	private String modId;
	private Integer modDeviceCd;
	private Date modDateTimeSvr;
	//image end
	
	// image
	private String originalFileName;
	private String uuidFileName;
	
	private MultipartFile[] file0;
    private MultipartFile[] file1;
	
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
	public String getOriginalFileName() {
		return originalFileName;
	}
	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}
	public String getUuidFileName() {
		return uuidFileName;
	}
	public void setUuidFileName(String uuidFileName) {
		this.uuidFileName = uuidFileName;
	}
	public MultipartFile[] getFile0() {
		return file0;
	}
	public void setFile0(MultipartFile[] file0) {
		this.file0 = file0;
	}
	public MultipartFile[] getFile1() {
		return file1;
	}
	public void setFile1(MultipartFile[] file1) {
		this.file1 = file1;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public Integer getDefaultNy() {
		return defaultNy;
	}
	public void setDefaultNy(Integer defaultNy) {
		this.defaultNy = defaultNy;
	}
	public Integer getSort() {
		return sort;
	}
	public void setSort(Integer sort) {
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
	public long getSize() {
		return size;
	}
	public void setSize(long size) {
		this.size = size;
	}
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
	public String getPseq() {
		return pseq;
	}
	public void setPseq(String pseq) {
		this.pseq = pseq;
	}
	public String getRegIp() {
		return regIp;
	}
	public void setRegIp(String regIp) {
		this.regIp = regIp;
	}
	public String getRegSeq() {
		return regSeq;
	}
	public void setRegSeq(String regSeq) {
		this.regSeq = regSeq;
	}
	public String getRegId() {
		return regId;
	}
	public void setRegId(String regId) {
		this.regId = regId;
	}
	public Integer getRegDeviceCd() {
		return regDeviceCd;
	}
	public void setRegDeviceCd(Integer regDeviceCd) {
		this.regDeviceCd = regDeviceCd;
	}
	public Date getRegDateTimeSvr() {
		return regDateTimeSvr;
	}
	public void setRegDateTimeSvr(Date regDateTimeSvr) {
		this.regDateTimeSvr = regDateTimeSvr;
	}
	public String getModIp() {
		return modIp;
	}
	public void setModIp(String modIp) {
		this.modIp = modIp;
	}
	public String getModSeq() {
		return modSeq;
	}
	public void setModSeq(String modSeq) {
		this.modSeq = modSeq;
	}
	public String getModId() {
		return modId;
	}
	public void setModId(String modId) {
		this.modId = modId;
	}
	public Integer getModDeviceCd() {
		return modDeviceCd;
	}
	public void setModDeviceCd(Integer modDeviceCd) {
		this.modDeviceCd = modDeviceCd;
	}
	public Date getModDateTimeSvr() {
		return modDateTimeSvr;
	}
	public void setModDateTimeSvr(Date modDateTimeSvr) {
		this.modDateTimeSvr = modDateTimeSvr;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	
	
}
