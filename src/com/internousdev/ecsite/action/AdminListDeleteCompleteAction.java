package com.internousdev.ecsite.action;

import java.sql.SQLException;

import com.internousdev.ecsite.dao.AdminListDeleteCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class AdminListDeleteCompleteAction extends ActionSupport{
	private String message;
	public String execute() throws SQLException {
		String result = ERROR;

		AdminListDeleteCompleteDAO adminListDeleteCompleteDAO = new AdminListDeleteCompleteDAO();

		int res = adminListDeleteCompleteDAO.deleteUserList();

		 if(res > 0){
			 setMessage("商品情報を削除しました。");
		 }else{
			 setMessage("商品情報の削除に失敗しました。");

		 }
		 result = SUCCESS;
		 return result;
	}
	public String getMessage(){
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}

}
