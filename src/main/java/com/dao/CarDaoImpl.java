package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.model.Car;

public class CarDaoImpl implements CarDao{

	private JdbcTemplate jdbcTemplate;
	public CarDaoImpl(DataSource dataSoruce) {
		this.jdbcTemplate = new JdbcTemplate(dataSoruce);
	}

	public int create(Car car) {
		String sql = "INSERT INTO CAR(id,car_Model,car_Regno,car_Rate) values(?,?,?,?)";
		try {

			int counter = jdbcTemplate.update(sql,
					new Object[] {car.getCarId(),car.getCarModel(),car.getCarRegno(),car.getCarRate() });
							

			return counter;

		} 
		catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	public List<Car> read() {
		List<Car> carList = jdbcTemplate.query("SELECT * FROM CAR", new RowMapper<Car>() 
		{
			public Car mapRow(ResultSet rs, int rowNum) throws SQLException
			{
				Car car=new Car();
				car.setCarId(rs.getInt("id"));
				car.setCarModel(rs.getString("car_Model"));
				car.setCarRegno(rs.getString("car_Regno"));
				car.setCarRate(rs.getInt("car_Rate"));
				return car;
				}
		});
		return carList;
	}

	public List<Car> findStudentById(int id) {

		List<Car> carList = jdbcTemplate.query("SELECT * FROM CAR where id=?",
				new Object[] { id }, new RowMapper<Car>()
		{

			public Car mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				
				Car car=new Car();
				car.setCarId(rs.getInt("id"));
				car.setCarModel(rs.getString("car_Model"));
				car.setCarRegno(rs.getString("car_Regno"));
				car.setCarRate(rs.getInt("car_Rate"));
				return car;
				}
		
		});
		return carList;
	}

	public int update(Car car) {
		// TODO Auto-generated method stub
		
				String sql = "UPDATE CAR SET id=?, car_Model=?, car_Regno=? WHERE car_Rate=?";
				try {

					int counter = jdbcTemplate.update(sql,
							new Object[] { car.getCarId(), car.getCarModel(), car.getCarRegno(), car.getCarRate() });

					return counter;

				} catch (Exception e) {
					e.printStackTrace();
				return 0;
				}
	}

	public int delete(int id) {
		// TODO Auto-generated method stub
		String sql = "DELETE FROM CAR WHERE id=?";

		try {

			int counter = jdbcTemplate.update(sql, new Object[] { id });

			return counter;

		} catch (Exception e) {
			e.printStackTrace();
		return 0;
	}
	}

	
	}


