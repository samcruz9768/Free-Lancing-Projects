package com.niit.exception;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalExceptionHandler {
	
	@ExceptionHandler(Exception.class)
	public String handlerException(Model model) {
		model.addAttribute("title","Error 404");
		model.addAttribute("errorTitle","Page Not Found");
		model.addAttribute("errorDescription","Page you are requesting is currently not available.");
		return "error";
	}

}
