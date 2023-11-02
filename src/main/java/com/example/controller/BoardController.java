package com.example.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.slf4j.Slf4j;

@Slf4j

@RequestMapping("/board")
@Controller
public class BoardController {
	
	@GetMapping("/cs")
	void loginTest(Model model){
		
	}
	@PostMapping("/loginAction")
	void loginAction() {
		
	}
	@GetMapping("/write")
	void write(Model model){
		
	}
	@PostMapping("/writeAction")
	void writeAction() {
		
	}
	@GetMapping("/view")
	void view(Model model){
		
	}
	@GetMapping("/deleteAction")
	void deleteAction() {
		
	}
	@GetMapping("/update")
	void update(Model model){
		
	}
	@PostMapping("/updateAction")
	void updateAction() {
		
	}
}
