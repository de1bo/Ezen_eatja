package com.junefw.infra.modules.store;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.junefw.infra.common.util.UtilDateTime;
import com.junefw.infra.common.util.UtilUpload;
import com.junefw.infra.modules.member.MemberVo;

@Service
public class StoreServiceImpl implements StoreService{

	@Autowired
	StoreDao dao;
	
	@Override
	public int selectOneCount(StoreVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}

	@Override
	public int insert(Store dto) throws Exception {
		
		try {
			
			setRegMod(dto);
			
			dto.setRegDateTime(UtilDateTime.nowDate());
			dto.setModDateTime(UtilDateTime.nowDate());
			dao.insert(dto);
			
			int j = 0;
			for(MultipartFile multipartFile : dto.getFile0() ) {
				String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
				UtilUpload.upload(multipartFile, pathModule, dto);
				dto.setTableName("infrMemberUploaded");
				dto.setType(0);
				dto.setDefaultNy(0);
				dto.setSort(j);
				dto.setDefaultNy(0);
				dto.setPseq(dto.getStifSeq());
				
				dao.insertUploaded(dto);
				j++;
			}
			
			j = 0;
			for(MultipartFile multipartFile : dto.getFile1 ()) {
				String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
				UtilUpload.upload(multipartFile, pathModule, dto);
				
				dto.setTableName("infrMemberUploaded");
				dto.setType(1);
				dto.setDefaultNy(0);
				dto.setSort(j);
				dto.setDefaultNy(0);
				dto.setPseq(dto.getStifSeq());
				

				
				dao.insertUploaded(dto);
				j++;
			}
			
		} finally{
			
		}
		return 0;
	}

	@Override
	public Store selectOne(StoreVo vo) throws Exception {
	return dao.selectOne(vo);
	}
	
	@Override
	public int insertStoreTel(Store dto) throws Exception {
	
		return dao.insertStoreTel(dto);
	}
	@Override
	public int insertStoreLocation(Store dto) throws Exception {
	
		return dao.insertStoreLocation(dto);
	}
	@Override
	public int insertStoreMenu(Store dto) throws Exception {
		
		return dao.insertStoreMenu(dto);
	}
	
	
	private void setRegMod(Store dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int insertUploaded(Store dto) throws Exception {
		// TODO Auto-generated method stub
		
		
		return dao.insertUploaded(dto);
	}
	
	
	
}