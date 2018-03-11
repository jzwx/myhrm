package com.my.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.my.bean.Stipend;

public class addStipend extends HttpServlet {

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
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
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
		request.setCharacterEncoding("GBK");
		int sid=Integer.parseInt(request.getParameter("sid"));
		String name=request.getParameter("name");
		float basic=Float.parseFloat(request.getParameter("basic"));
		float eat=Float.parseFloat(request.getParameter("eat"));
		float house=Float.parseFloat(request.getParameter("house"));
		float duty=Float.parseFloat(request.getParameter("duty"));
		float scot=Float.parseFloat(request.getParameter("scot"));
		float punishment=Float.parseFloat(request.getParameter("punishment"));
		float other=Float.parseFloat(request.getParameter("other"));
		String granttime=request.getParameter("granttime");
		float totalize=basic+eat+house+duty+scot+punishment+other;
		//System.out.println(sid+" "+name+" "+basic+" "+eat+" "+house+" "+duty+" "+scot+" "+punishment+" "+other+" "+granttime+" "+totalize);
		Stipend s=new Stipend();
		s.setSid(sid);
		s.setName(name);
		s.setBasic(basic);
		s.setEat(eat);
		s.setHouse(house);
		s.setDuty(duty);
		s.setScot(scot);
		s.setPunishment(punishment);
		s.setOther(other);
		s.setGranttime(granttime);
		s.setTotalize(totalize);
		s.stipendInsert();
		response.sendRedirect("Stipendlist.bin");
	}

}
