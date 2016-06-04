package filters;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import model.Student;

@WebFilter("/*")
public class FilterDispatcher implements Filter {


	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest hsr=(HttpServletRequest) request;
		String path=null;
		/*获取请求的Service的地址*/
		String serverPath=hsr.getServletPath();
		System.out.println(serverPath);
		/*控制到添加界面*/
		if("/student-input.action".equals(serverPath)){
			path="/META-INF/view/input.jsp";
		}
		/*控制到显示详情界面*/
		if("/student-save.action".equals(serverPath)){
			path="/META-INF/view/detials.jsp";
			String studentCode=request.getParameter("student_code");
			String studentName=request.getParameter("student_name");
			String studentAge=request.getParameter("student_age");
			Student student=new Student(studentCode, studentName, studentAge);
			request.setAttribute("student", student);
		}
		if(path!=null){
			request.getRequestDispatcher(path).forward(request, response);
			return;
		}
		chain.doFilter(request, response);
	}
	public void init(FilterConfig fConfig) throws ServletException {

	}

}
