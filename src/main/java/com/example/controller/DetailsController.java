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

@RequestMapping("/details")
@Controller
public class DetailsController {
	@GetMapping("/julmi_details")
	void julmi_details(Model model) {
		log.info("julmi_details()...");
	}
		
	@GetMapping("/kkulWallet_details")
	void kkulWallet_details(Model model) {
		log.info("kkulWallet_details()...");
		
	}
	
	
	
	
}
