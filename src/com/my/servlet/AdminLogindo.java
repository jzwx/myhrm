package com.my.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.my.bean.User;

public class AdminLogindo extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=gb2312");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("GBK");
		String role=request.getParameter("role");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String vali=request.getParameter("vali");
		HttpSession session=request.getSession();
		String v_vali=(String) session.getAttribute("vali");
		User u=new User();
		u.setUsername(username);
		u.setPassword(password);
		u.setIsadmin(role);
		//System.out.println(vali+" "+v_vali);
		if(u.Vali()&&vali.equals(v_vali)&&role.equals("1")){
			session.setAttribute("username", username);
//			response.sendRedirect("adminMain.jsp");
			out.print("ok");
		}else if(u.Vali()&&vali.equals(v_vali)&&role.equals("0")){
			session.setAttribute("username", username);
//			response.sendRedirect("Main.jsp");
			out.print("ok1");
		}
		else{
			//System.out.println("�˺Ż��������");
			out.print("error");
//			response.sendRedirect("adminLogin.jsp");
		}
	}

}
