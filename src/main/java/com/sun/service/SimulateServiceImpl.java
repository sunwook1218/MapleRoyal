package com.sun.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.sun.model.Product;
import com.sun.scrapper.RoyalScrapper;

@Service
public class SimulateServiceImpl implements SimulateService {

	@Override
	public List<String> simulate(int trials) throws IOException {

		List<String> resultList = new ArrayList<String>();
		List<Product> productList = RoyalScrapper.getList();

		for (int i = 0; i < trials; i++) {
			String productName = "";
			double randomZen = Math.random() * 100;

			for (Product product : productList) {
				productName = product.getName();
				if (product.getProability() > randomZen) {
					break;
				}
			}
			resultList.add(productName);
			
		}
		return resultList;
		
	}

	@Override
	public int count(List<String> simulatedList) {
		int count = 0;

		for (String data : simulatedList) {
			if (data.contains("스페셜")) {
				count++;
			}
		}
		return count;
		
	}
}
