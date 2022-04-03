package com.junefw.infra.modules.member;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Member {
	// infrmember
	private String seq;
	private String ifmmName="";
	private String ifmmId="";
	private String ifmmGenderCd;
	private Integer ifmmDelNy;
	private String ifmmPassword;
	private String ifmmBirthday;
	private String ifmmRecommendSeq;
	private Date regDateTime;
	private Date modDateTime;
	
	// email
	private String ifmeEmailAccount;
	private String ifmeEmailDomainCd;
	
	//phone
	private String ifmpSeq;
	private Integer ifmpDefaultNy;
	private Integer ifmpDelNy;
	private Integer ifmpTelecomCd;
	private String ifmpNumber;
	private String ifmpHomeTel;
	private Integer infrMember_Seq;
	
	//phone array
	private Integer[] ifmpDefaultNyArray;
	private Integer[] ifmpTelecomCdArray;
	private String[] ifmpNumberArray;
											
	// address
	private String imadSeq;
	private String imadZipcode;
	private String imadAddress1;
	private String imadAddress2;
	private String imadDefaultNy;
	private Integer ifmaDelNy;
	
	
	static List<Member> cachedCodeArrayList = new ArrayList<Member>();
	private String ifcdName;
	
	
	
	public String getIfmmGenderCd() {
		return ifmmGenderCd;
	}
	public void setIfmmGenderCd(String ifmmGenderCd) {
		this.ifmmGenderCd = ifmmGenderCd;
	}
	public String getIfcdName() {
		return ifcdName;
	}
	public void setIfcdName(String ifcdName) {
		this.ifcdName = ifcdName;
	}
	
	
	
	// ---------
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	
	public String getIfmmName() {
		return ifmmName;
	}
	
	public static List<Member> getCachedCodeArrayList() {
		return cachedCodeArrayList;
	}
	public static void setCachedCodeArrayList(List<Member> cachedCodeArrayList) {
		Member.cachedCodeArrayList = cachedCodeArrayList;
	}
	public void setIfmmName(String ifmmName) {
		this.ifmmName = ifmmName;
	}
	public String getIfmmId() {
		return ifmmId;
	}
	public void setIfmmId(String ifmmId) {
		this.ifmmId = ifmmId;
	}
	public Integer getIfmmDelNy() {
		return ifmmDelNy;
	}
	public void setIfmmDelNy(Integer ifmmDelNy) {
		this.ifmmDelNy = ifmmDelNy;
	}
	public String getIfmmPassword() {
		return ifmmPassword;
	}
	public void setIfmmPassword(String ifmmPassword) {
		this.ifmmPassword = ifmmPassword;
	}
	public String getIfmmBirthday() {
		return ifmmBirthday;
	}
	public void setIfmmBirthday(String ifmmBirthday) {
		this.ifmmBirthday = ifmmBirthday;
	}
	public String getIfmpNumber() {
		return ifmpNumber;
	}
	public void setIfmpNumber(String ifmpNumber) {
		this.ifmpNumber = ifmpNumber;
	}
	public String getIfmpHomeTel() {
		return ifmpHomeTel;
	}
	public void setIfmpHomeTel(String ifmpHomeTel) {
		this.ifmpHomeTel = ifmpHomeTel;
	}
	public String getImadAddress1() {
		return imadAddress1;
	}
	public void setImadAddress1(String imadAddress1) {
		this.imadAddress1 = imadAddress1;
	}
	public String getImadAddress2() {
		return imadAddress2;
	}
	public void setImadAddress2(String imadAddress2) {
		this.imadAddress2 = imadAddress2;
	}
	public String getIfmeEmailAccount() {
		return ifmeEmailAccount;
	}
	public void setIfmeEmailAccount(String ifmeEmailAccount) {
		this.ifmeEmailAccount = ifmeEmailAccount;
	}
	public String getIfmeEmailDomainCd() {
		return ifmeEmailDomainCd;
	}
	public void setIfmeEmailDomainCd(String ifmeEmailDomainCd) {
		this.ifmeEmailDomainCd = ifmeEmailDomainCd;
	}
	public Date getRegDateTime() {
		return regDateTime;
	}
	public void setRegDateTime(Date date) {
		this.regDateTime = date;
	}
	public Date getModDateTime() {
		return modDateTime;
	}
	public void setModDateTime(Date date) {
		this.modDateTime = date;
	}
	public String getIfmmRecommendSeq() {
		return ifmmRecommendSeq;
	}
	public void setIfmmRecommendSeq(String ifmmRecommendSeq) {
		this.ifmmRecommendSeq = ifmmRecommendSeq;
	}
	public String getImadSeq() {
		return imadSeq;
	}
	public void setImadSeq(String imadSeq) {
		this.imadSeq = imadSeq;
	}
	public Integer getIfmaDelNy() {
		return ifmaDelNy;
	}
	public void setIfmaDelNy(Integer ifmaDelNy) {
		this.ifmaDelNy = ifmaDelNy;
	}
	public String getImadDefaultNy() {
		return imadDefaultNy;
	}
	public void setImadDefaultNy(String imadDefaultNy) {
		this.imadDefaultNy = imadDefaultNy;
	}
	public String getImadZipcode() {
		return imadZipcode;
	}
	public void setImadZipcode(String imadZipcode) {
		this.imadZipcode = imadZipcode;
	}
	public Integer getIfmpDelNy() {
		return ifmpDelNy;
	}
	public void setIfmpDelNy(Integer ifmpDelNy) {
		this.ifmpDelNy = ifmpDelNy;
	}
	public Integer getIfmpTelecomCd() {
		return ifmpTelecomCd;
	}
	public void setIfmpTelecomCd(Integer ifmpTelecomCd) {
		this.ifmpTelecomCd = ifmpTelecomCd;
	}
	public Integer getInfrMember_Seq() {
		return infrMember_Seq;
	}
	public void setInfrMember_Seq(Integer infrMember_Seq) {
		this.infrMember_Seq = infrMember_Seq;
	}
	public String getIfmpSeq() {
		return ifmpSeq;
	}
	public void setIfmpSeq(String ifmpSeq) {
		this.ifmpSeq = ifmpSeq;
	}
	public Integer getIfmpDefaultNy() {
		return ifmpDefaultNy;
	}
	public void setIfmpDefaultNy(Integer ifmpDefaultNy) {
		this.ifmpDefaultNy = ifmpDefaultNy;
	}
	public Integer[] getIfmpDefaultNyArray() {
		return ifmpDefaultNyArray;
	}
	public void setIfmpDefaultNyArray(Integer[] ifmpDefaultNyArray) {
		this.ifmpDefaultNyArray = ifmpDefaultNyArray;
	}
	public Integer[] getIfmpTelecomCdArray() {
		return ifmpTelecomCdArray;
	}
	public void setIfmpTelecomCdArray(Integer[] ifmpTelecomCdArray) {
		this.ifmpTelecomCdArray = ifmpTelecomCdArray;
	}
	public String[] getIfmpNumberArray() {
		return ifmpNumberArray;
	}
	public void setIfmpNumberArray(String[] ifmpNumberArray) {
		this.ifmpNumberArray = ifmpNumberArray;
	}
	
	
	
}
