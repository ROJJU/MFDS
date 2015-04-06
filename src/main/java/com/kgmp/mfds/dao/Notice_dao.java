package com.kgmp.mfds.dao;

import java.util.List;
import java.util.Map;

import com.kgmp.mfds.vo.Notice;

public interface Notice_dao {
	int getNoticeQty(Map<String, Object> info);
	int getSearchQty(Map<String, Object> info);
	List<Notice> getNoticeList(Map<String, Object> info);
	List<Notice> getSearch(Map<String, Object> info);
}
