package com.my.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.my.bean.Job;

public class jobUpdate extends HttpServlet {

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
		String id=request.getParameter("id");
		String jid=request.getParameter("jid");
		String jname=request.getParameter("jname");
		String jlead=request.getParameter("jlead");
		String dname=request.getParameter("dname");
		String person=request.getParameter("person");
		String content=request.getParameter("content");
		Job j=new Job();
		j.setId(id);
		j.setJid(jid);
		j.setJname(jname);
		j.setJlead(jlead);
		j.setDname(dname);
		j.setPerson(person);
		j.setContent(content);
		j.jobUpdate();
		int rowCount=Integer.parseInt(id);
		int pageCount=0;
		if(rowCount%10==0){
			pageCount=rowCount/10;
		}else{
			pageCount=rowCount/10+1;
		}
		response.sendRedirect("Joblist.bin?nowPage="+pageCount);
	}

}
