package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.model.BookCar;




@Controller
public class BookCarController {
	
	
	@ModelAttribute("bookCar")
	public BookCar setSignUpForm() 
	{
		return new BookCar();
	}

	/**
	 * Method to show the initial HTML form
	 *
	 * @return
	 */
	@GetMapping("/showBookcar")
	public String showBookForm() {
		return "book-car";
	}

	@PostMapping("/saveBookCar")
	public String saveUser(@ModelAttribute("bookCar") BookCar bookCar, Model model) {
// Implement business logic to save userdetails into a database
// .....
		
		System.out.println("CarModel :" +bookCar.getModel());
		System.out.println("CarColor :" +bookCar.getColor());
		System.out.println("CarRent :" +bookCar.getCarRent());
		model.addAttribute("message", "Thanks user for car booking");
		model.addAttribute("carbook", bookCar);
		return "bookSuccessfully";
	
		
	}
}
