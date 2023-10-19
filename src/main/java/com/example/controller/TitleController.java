package com.example.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.util.Alpha;
import com.example.util.Color;

import lombok.extern.slf4j.Slf4j;

@Slf4j

@RequestMapping("/title")
@Controller
public class TitleController {
	@GetMapping("/accessory")
	void accessory(Model model) {
		log.info("accessory()...");
		
	}
	
	@GetMapping("/animal")
	void animal(Model model) {
		log.info("animal()...");
	}
	
	@GetMapping("/bbobby")
	void bbobby(Model model) {
		log.info("bbobby()...");
	}
	@GetMapping("/best")
	void best(Model model) {
		log.info("bbobby()...");
	}
	
	
	
	@GetMapping("/data")
	@ResponseBody   //REST API
	Alpha data() {
		return new Alpha();
	}
}
