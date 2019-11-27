package com.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.CarDao;
import com.model.Car;

@Controller
public class UpdateCarController {
	
	@Autowired
	private CarDao carDao;
	
	// the id passed in Dao class
	@RequestMapping(value="/update/{id}")
	
	public ModelAndView findStudentById(ModelAndView model,@PathVariable("id") int id)
			throws IOException {
		
		List<Car> listCar = carDao.findStudentById(id);
		model.addObject("listCar", listCar);
		model.setViewName("update");

		return model;
	}
	
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	
	public ModelAndView updateCar( @RequestParam("id") int id,@RequestParam("carModel") String carModel, @RequestParam("carRegno") String carRegno,
			@RequestParam("carRate") int carRate, ModelAndView mv)
	{
		Car car=new Car();
		car.setCarId(id);
		car.setCarModel(carModel);
		car.setCarRegno(carRegno);
		car.setCarRate(carRate);
		
		int counter = carDao.update(car);

		if (counter > 0) {
			mv.addObject("msg", "Car records updated against car id: " + car.getCarId());
		} else {
			mv.addObject("msg", "Error.");
		}

		mv.setViewName("update");

		return mv;
		
	}
	
	

	


}
