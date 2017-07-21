
package acorn.controller;

import acorn.action.HomeAction;
import acorn.manager.action.MlistAction;
import acorn.manager.action.MupdateAction;
import acorn.manager.action.MupdateFormAction;
import acorn.member.action.AgreeInfo;
import acorn.member.action.MemberDeleteAction;
import acorn.member.action.MemberFindIdAction;
import acorn.member.action.MemberFindIdAjaxAction;
import acorn.member.action.MemberFindPwdAjaxAction;
import acorn.member.action.MemberIndexAction;
import acorn.member.action.MemberInfoAction;
import acorn.member.action.MemberOverlabAction;
import acorn.member.action.MemberSignUpAction;
import acorn.member.action.MemberSignUpFormAction;
import acorn.member.action.MemberSigninAction;
import acorn.member.action.MemberSigninFormAction;
import acorn.member.action.MemberSignoutAction;
import acorn.member.action.MemberUpdateAction;
import acorn.member.action.MemberUpdateFormAction;
import acorn.product.action.ItemListAction;
import acorn.product.action.ItemRegistAction;
import acorn.product.action.ItemRegistFormAction;
import acorn.service.action.QnaDetailAction;
import acorn.service.action.ServiceDetailAction;
import acorn.service.action.ServiceInsertAction;
import acorn.service.action.ServiceInsertFormAction;
import acorn.service.action.ServiceListAction;
import acorn.service.action.ServiceQnalistAction;
import acorn.userpage.shop.action.ShopAction;
import acorn.userpage.shop.action.ShopDetailAction;

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
		}else if(command.equals("/userpage/shop/shop")) {
			action = new ShopAction();
		}else if(command.equals("/userpage/shop/detail")) {
			action = new ShopDetailAction();
		}else if(command.equals("/home")) {
			action = new HomeAction();
		}else if(command.equals("/popup/loginresult")){
			action = new MemberSigninAction();
		}else if(command.equals("/popup/signinform")){
			action = new MemberSigninFormAction();
		}else if(command.equals("/manager/mlist")) {
			action = new MlistAction();
		}else if(command.equals("/manager/updateform2")) {
			action = new MupdateFormAction();
		}else if(command.equals("/popup/logout")){
			action = new MemberSignoutAction();
		}else if(command.equals("/member/info")){
			action = new MemberInfoAction();
		}else if(command.equals("/manager/update")) {
	action = new MupdateAction();
		}else if(command.equals("/member/delete")){
			action = new MemberDeleteAction();
		}else if(command.equals("/member/updateform")){
			action = new MemberUpdateFormAction();
		}else if(command.equals("/member/update")){
			action = new MemberUpdateAction();
		}else if(command.equals("/service/serviceinsertform")){
			action=new ServiceInsertFormAction();
		}else if(command.equals("/service/serviceinsert")){
			action=new ServiceInsertAction();
		}else if(command.equals("/service/servicelist")){
			action=new ServiceListAction();
		}else if(command.equals("/service/servicedetail")){
			action=new ServiceDetailAction();
		}
		return action;
	}
}
