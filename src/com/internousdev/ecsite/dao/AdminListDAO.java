package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.internousdev.ecsite.dto.AdminInfoDTO;
import com.internousdev.ecsite.util.DBConnector;
public class AdminListDAO {

	private DBConnector dbConnector = new DBConnector();
	private Connection connection = dbConnector.getConnection();
	public List<AdminInfoDTO> getAdminList () throws SQLException {
		List<AdminInfoDTO> adminInfoDTOList = new ArrayList<AdminInfoDTO>();
		String sql ="SELECT * FROM login_user_transaction WHERE admin_flg = 1 ORDER BY id";
		try {

			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				AdminInfoDTO dto = new AdminInfoDTO();
				dto.setId(resultSet.getString("id"));
				dto.setLogin_id(resultSet.getString("login_id"));
				dto.setLogin_pass(resultSet.getString("login_pass"));
				dto.setUser_name(resultSet.getString("user_name"));
				dto.setInsert_date(resultSet.getString("insert_date"));
				dto.setAdmin_Flg(resultSet.getString("admin_flg"));

				adminInfoDTOList.add(dto);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			connection.close();
		}
		return adminInfoDTOList;


	}
}