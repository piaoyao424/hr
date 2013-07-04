package net.xabc.oo.hr.utils.filters;

public class Util {
	public static String encode(String text){
		StringBuffer sb=new StringBuffer();
		if(text!=null && text.length()>0){
			int t=text.length();
			for(int i=0;i<t;i++ ){
				char ca=text.charAt(i);
				switch(ca){
				case ' ':
					sb.append("&nbsp;");
					break;
				case '\r':
					sb.append("<br>");
					break;
				case '<':
					sb.append("&lt;");
					break;
				case '>':
					sb.append("&gt;");
					break;
				case '\'':
					sb.append("&#039;");
					break;
				case '"':
					sb.append("&quot;");
					break;
				case '&':
					sb.append("&amp;");
					break;
			   default:
					sb.append(ca);
					break;
				}
			}
		}
		return sb.toString();
	}

}
