package com.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dao.CarDao;
import com.model.Car;





@Controller
public class ReadCarController {
	
	
	@Autowired
	private CarDao carDao;
	
	// give the value in the request mapping ++++
	@RequestMapping(value ="/read") 
	public String read() {
		return "read";
	}
	// create a method  with model parameter 
	
	
	public ModelAndView readCar(ModelAndView model) throws IOException
	{
		
		List<Car> listCar=carDao.read();
		model.addObject("listCar", listCar);
		model.setViewName("read");
		return model;
		
	}
}
