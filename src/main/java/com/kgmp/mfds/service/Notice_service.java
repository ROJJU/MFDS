package com.kgmp.mfds.service;

import java.util.Map;

public interface Notice_service{
	Map<String, Object> getNotice(int currentPage, String linkURL, String search, String find);
}
