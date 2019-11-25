package com.dao;

import java.util.List;

import com.model.Car;

public interface CarDao {
	
	
	public int create(Car car);

	public List<Car> read();

	public List<Car> findStudentById(int id);

	public int update(Car car);

	public int delete(int id);


	
	
	

}
