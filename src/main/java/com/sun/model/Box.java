package com.sun.model;

public class Box {

	private static Box instance;
	private int value = 100000;

	private Box() {
	}

	public static Box getInstance(String sessionId) {
		if (instance == null) {
			instance = new Box();
			System.out.println("지금 생성되었습니다.");
		}
		return instance;
	}

	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
	}

}
