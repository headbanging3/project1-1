package acorn.product.controller;

import acorn.product.action.ItemListAction;
import acorn.product.action.ItemRegistAction;
import acorn.product.action.ItemRegistFormAction;

public class UserActionFactory {
	private static UserActionFactory factory;
	private UserActionFactory(){}
	//자신의 참조값을 리턴해주는 메소드
	public static UserActionFactory getInstance(){
		if(factory==null){
			factory=new UserActionFactory();
		}
		return factory;
	}
	
	//인자로 전달되는 command 를 수행할 Action type 객체를 리턴해주는 
	//메소드
	public Action action(String command){
		//Action 추상클래스 type 을 담을 지역변수 만들기 
		Action action=null;
		if(command.equals("/productManagement/product_list")){
			action=new ItemListAction();
		}else if(command.equals("/productManagement/regist_form")){
			action=new ItemRegistFormAction();
		}else if(command.equals("/productManagement/regist_confirm")){
			action=new ItemRegistAction();
		}
		return action;
	}
}








