package com.itwill.simpleTag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class IfTag extends TagSupport{
	private boolean test;
	
	public void setTest(boolean test) {
		System.out.println("IfTag.setText("+test+")");
		this.test=test;
	}
	@Override
	public int doStartTag() throws JspException {
		if (test) {
			//트루면 바디를 포함해라(실행해라)
			return EVAL_BODY_INCLUDE;
		}else {
			return SKIP_BODY;
		}
	}
	@Override
	public int doEndTag() throws JspException {
		//계속 페이지를 실행해라
		return EVAL_PAGE;
	}
	
}
