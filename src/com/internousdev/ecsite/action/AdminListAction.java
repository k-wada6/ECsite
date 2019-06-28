package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;


import com.internousdev.ecsite.dao.AdminListDAO;
import com.internousdev.ecsite.dto.AdminInfoDTO;
import com.opensymphony.xwork2.ActionSupport;


public class AdminListAction extends ActionSupport implements SessionAware{
	private List<AdminInfoDTO> adminInfoDTOList = new ArrayList<AdminInfoDTO>();
	private Map<String, Object> session;
	public String execute() throws SQLException {
		AdminListDAO adminListDAO = new AdminListDAO();
		adminInfoDTOList = adminListDAO.getAdminList();
		if(!(adminInfoDTOList.size() > 0)) {
			adminInfoDTOList = null;
		}
	     String result = SUCCESS;
	     return result;
	}
	 public List<AdminInfoDTO> getAdminInfoDTOList(){
		 return adminInfoDTOList;
	 }
	 public void setUserInfoDTOList(List<AdminInfoDTO> adminInfoDTOList){
		 this.adminInfoDTOList = adminInfoDTOList;
	 }
	 @Override
	 public void setSession(Map<String, Object> session) {
		 this.session = session;

	 }
	 public Map<String, Object> getSession(){
		 return session;
	 }

}
