package com.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dao.CarDao;

@Controller
public class DeleteCarController {
	@Autowired
	private CarDao carDao;
	
	@RequestMapping(value="/delete/{id}")
	
	public ModelAndView deleteCarById(ModelAndView mv,@PathVariable("id") int id) throws IOException{
		int counter = carDao.delete(id);

		if (counter > 0) {
			mv.addObject("msg", "Car records deleted against id: " + id);
		} else {
			mv.addObject("msg", "Error.");
		}

		mv.setViewName("delete");
		
		return mv;
		
	}
	

}
