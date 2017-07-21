package acorn.controller;

import acorn.action.HomeAction;
import acorn.member.action.AgreeInfo;
import acorn.member.action.MemberFindIdAction;
import acorn.member.action.MemberFindIdAjaxAction;
import acorn.member.action.MemberFindPwdAjaxAction;
import acorn.member.action.MemberIndexAction;
import acorn.member.action.MemberOverlabAction;
import acorn.member.action.MemberSignUpAction;
import acorn.member.action.MemberSignUpFormAction;
import acorn.member.action.MemberSigninAction;
import acorn.member.action.MemberSigninFormAction;

import acorn.product.action.ItemListAction;
import acorn.product.action.ItemRegistAction;
import acorn.product.action.ItemRegistFormAction;
import acorn.service.action.QnaDetailAction;
//github.com/headbanging3/project1-1.git
import acorn.service.action.ServiceQnalistAction;

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
	
	//인자로 전달되는 command를 수행할 action type객체를 리턴해주는 메소드
	public Action action(String command){
		Action action=null;
		if(command.equals("/member/agree_info")){
			action=new AgreeInfo();
		}else if(command.equals("/member/signup_form")){
			action=new MemberSignUpFormAction();
		}else if(command.equals("/index")){
			action=new MemberIndexAction();
		}else if(command.equals("/member/signup")){
			action=new MemberSignUpAction();
		}else if(command.equals("/member/find_id")){
			action=new MemberFindIdAction();
		}else if(command.equals("/member/find_id_ajax")){
			action=new MemberFindIdAjaxAction();
		}else if(command.equals("/member/find_pwd_ajax")){
			action=new MemberFindPwdAjaxAction();
		}else if(command.equals("/member/overlab")){
			action=new MemberOverlabAction();
		}else if(command.equals("/service/qnalist")){
			action=new ServiceQnalistAction();
		}else if(command.equals("/service/qnadetail")){
			action=new QnaDetailAction();
		}else if(command.equals("/productManagement/product_list")){
			action=new ItemListAction();
		}else if(command.equals("/productManagement/regist_form")){
			action=new ItemRegistFormAction();
		}else if(command.equals("/productManagement/regist_confirm")){
			action=new ItemRegistAction();
		}else if(command.equals("/home")) {
			action = new HomeAction();
		}else if(command.equals("/member/signin")){
			action = new MemberSigninAction();
		}else if(command.equals("/signinform")){
			action = new MemberSigninFormAction();
		}
		return action;
	}
}
