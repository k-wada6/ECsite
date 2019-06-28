package com.internousdev.ecsite.action;

import java.sql.SQLException;

import com.internousdev.ecsite.dao.UserListDeleteCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class UserListDeleteCompleteAction extends ActionSupport{
	private String message;
	public String execute() throws SQLException {
		String result = ERROR;

		UserListDeleteCompleteDAO userListDeleteCompleteDAO = new UserListDeleteCompleteDAO();

		int res = userListDeleteCompleteDAO.deleteUserList();

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
