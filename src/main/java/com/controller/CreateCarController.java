package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.CarDao;
import com.model.Car;

@Controller
public class CreateCarController {
	
	
	//create an object of dao interface class 
	@Autowired
	private CarDao carDao;
	
	
	@RequestMapping(value = "/create", method=RequestMethod.POST)
	public ModelAndView createCar(@RequestParam("carModel") String carModel, @RequestParam("carRegno") String carRegno,
			@RequestParam("carRate") int carRate, ModelAndView mv) {
		// create an object of car class
		Car car=new Car();
		car.setCarModel(carModel);
		car.setCarRegno(carRegno);
		car.setCarRate(carRate);
		
		int counter = carDao.create(car);

		if (counter > 0) {
			mv.addObject("msg", "car added successful.");
		} 
		else 
		{
			mv.addObject("msg", "Error.");
		}

		mv.setViewName("create");

		return mv;

	}
	}
	


