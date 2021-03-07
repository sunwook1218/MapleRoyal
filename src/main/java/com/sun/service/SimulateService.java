package com.sun.service;

import java.io.IOException;
import java.util.List;

public interface SimulateService {
	
	public List<String> simulate(int trials) throws IOException;

	public int count(List<String> simulatedList);

}
