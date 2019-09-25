package com.dev.cloud.dao;

import com.dev.cloud.vo.ItemDo;
import com.dev.cloud.vo.PatentTotal;
import com.dev.cloud.vo.Patentsub;

public interface patentsubMapper {

		//특허정보파일 삽입
		public int insertPatentsub(PatentTotal paten);
		
		//특허정보파일 변경
		public int updatePatentsub(Patentsub patentsub);
	
		public ItemDo selectPatSub(ItemDo itemdo);
}
