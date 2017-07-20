package acorn.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public abstract class Action {

	//추상메소드
	public abstract ActionForward execute
		(HttpServletRequest request, HttpServletResponse response);
}
