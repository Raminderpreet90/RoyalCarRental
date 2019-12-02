package com.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.model.User;

public class UserDaoImpl implements UserDao{
	   private JdbcTemplate jdbcTemplate;

	     public UserDaoImpl(DataSource dataSoruce) {
		jdbcTemplate = new JdbcTemplate(dataSoruce);
	}

	     public int registerUser(User user) {
	 		
	 		String sql = "INSERT INTO USER_DATA VALUES(?,?,?)";

	 		try {
	 			
	 			int counter = jdbcTemplate.update(sql, new Object[] { user.getUId(), user.getUname(),user.getUpassword()});

	 			return counter;

	 		} catch (Exception e)
	 		{
	 			e.printStackTrace();
	 			return 0;
	 		}
	 	}

	 	public String loginUser(User user) {
	 		
	 		String sql = "SELECT USER_ID FROM USER_DATA WHERE USER_ID=? AND USER_PASS=?";
	 		
	 		try {

	 			String UId = jdbcTemplate.queryForObject(sql, new Object[] {
	 					user.getUId(), user.getUname(),user.getUpassword() }, String.class);

	 			return UId;
	 			
	 		} catch (Exception e) {
	 			return null;
	 		}
	 	}

}
