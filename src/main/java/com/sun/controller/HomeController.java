package com.sun.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sun.model.Box;
import com.sun.service.SimulateService;

@Controller
@RequestMapping("/simulate")
public class HomeController {

	@Autowired
	private SimulateService ss;

	@RequestMapping("/result")
	public String home(Model model, Integer trials, HttpSession session) {

		System.out.println(session.getId());
		Box box = Box.getInstance(session.getId());
		System.out.println("BOX VALUE : " + box.getValue());

		box.setValue(box.getValue() + 1);

		if (trials == null) {
			trials = 10;
		}

		try {
			List<String> list = ss.simulate(trials);
			int count = ss.count(list);
			model.addAttribute("list", list);
			model.addAttribute("count", count);
		} catch (IOException e) {
			e.printStackTrace();
		}

		return "simulate/result";
	}

}
