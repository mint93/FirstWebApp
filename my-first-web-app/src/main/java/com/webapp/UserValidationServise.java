package com.webapp;

public class UserValidationServise {
	public boolean isUserValid(String user, String pass) {
		if (user.equals("ja") && pass.equals("bob")) {
			return true;
		}else {
			return false;
		}
	}
}
