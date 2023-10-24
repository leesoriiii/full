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

@RequestMapping("/accessory")
@Controller
public class AccessoryController {
	
	@GetMapping("/hairpin")
	void hairpin(Model model) {
		log.info("hairpin()...");
	}
	
	@GetMapping("/smart_tok")
	void smart_tok(Model model) {
		log.info("smart_tok()...");
	}
	
	
	
	@GetMapping("/data")
	@ResponseBody   //REST API
	Alpha data() {
		return new Alpha();
	}
}
