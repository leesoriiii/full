package com.example.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j

@RequestMapping("logindbs")
@Controller
public class LoginController {
	
	@GetMapping("/login")
	void loginTest(Model model){
		
	}
	@PostMapping("/loginAction")
	void loginAction() {
		
	}
	@PostMapping("/logOutAction")
	void logoutAction() {
		
	}
	@GetMapping("/join")
	void join(Model model){
		
	}
	@PostMapping("/joinAction")
	void joinAction() {
		
	}
}
