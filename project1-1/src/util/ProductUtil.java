package util;

public class ProductUtil {
	public static String gridChoice(int i){
		String grid="";
		if((i%3+2)%3==0) {
			return "alpha";
		}
		if((i%3+1)%3==0) {
			return "";
		}
		if(i%3==0) {
			return "omega";
		}
		return grid;
		
		
	}
	public static String indentChoice(int i){
		String indent="";
		if((i%3+2)%3==0) {
			indent = "indent-left";
		}
		if((i%3+1)%3==0) {
			indent = "indent3";
		}
		if(i%3==0) {
			indent = "indent-right";
		}
		return indent;	
	}
}
