package cn.com.yuting.manger.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.dispatcher.ng.filter.StrutsPrepareAndExecuteFilter;

public class UEditorUpload extends StrutsPrepareAndExecuteFilter {
	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		String url = ((HttpServletRequest)arg0).getRequestURI();  
		System.out.println(url);
        if ("/SHTest/ueditor1_4_3-utf8-jsp/jsp/controller.jsp".equals(url)) {  
            arg2.doFilter(arg0, arg1);  
        }else{  
            super.doFilter(arg0, arg1, arg2);  
        }  
	}

}
