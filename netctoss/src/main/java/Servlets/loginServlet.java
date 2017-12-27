/**
 * 
 */
package Servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.userDao;

/**
 * 
 * @author wentao
 */
public class loginServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String servletPath=request.getServletPath();
	     //System.out.println(servletPath);
		if(servletPath.equals("/loginCheck.loginmain")) {
		    loginCheck(request,response);
	    } else if(servletPath.equals("/login.loginmain")){
	    	boolean flag=true;
	    	 request.setAttribute("result", flag);
	    	request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
	    }
		
	}


	/**��¼��鷽��
	 * @author wentao
	 * @param 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void loginCheck(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
	     //System.out.println(request.getParameter("user_name"));
	     String name=request.getParameter("user_name");
	     String pwd=request.getParameter("user_password");
	     userDao d=new userDao();
	     boolean result=d.checkUser(name, pwd);
	     if(result) {
	    	 Cookie user_name_cookie=new Cookie("user_name",name);
	    	 user_name_cookie.setPath("/netctoss");
	    	 response.addCookie(user_name_cookie);
	    	 //response.sendRedirect("index.html");
	    	request.getRequestDispatcher("WEB-INF/index.jsp").forward(request, response);
	     }else {
	    	 request.setAttribute("result", result);
	    	 request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
	     }
		
	}
	
	

}
