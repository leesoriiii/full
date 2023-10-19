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

@RequestMapping("/bbobby")
@Controller
public class BbobbyController {
	@GetMapping("/kidult_doll")
	void kidult_doll(Model model) {
		log.info("bbobby()...");
	}
	
	@GetMapping("/julmi")
	void julmi(Model model) {
		log.info("julmi()...");
	}
	
	@GetMapping("/goods")
	void googs(Model model) {
		log.info("goods()...");
		
	}
	
	
	
	@GetMapping("/data")
	@ResponseBody   //REST API
	Alpha data() {
		return new Alpha();
	}
}
