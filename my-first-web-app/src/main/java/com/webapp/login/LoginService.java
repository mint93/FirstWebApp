package com.webapp.login;

public class LoginService{
	public boolean isUserValid(String user, String pass) {
		if (user.equals("ja") && pass.equals("bob")) {
			return true;
		}else {
			return false;
		}
	}
}
