package com.my.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.my.bean.Dept;
import com.my.bean.School;

public class deptUpdate extends HttpServlet {

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
		
		response.setContentType("text/html;charset=gb2312;");
		request.setCharacterEncoding("GBK");
		String id=request.getParameter("id");
		String did=request.getParameter("did");
		String dname=request.getParameter("dname");
		String lead=request.getParameter("lead");
		String content=request.getParameter("content");
		//System.out.println(id+" "+did+" "+dname+" "+lead+" "+content); 
		Dept d=new Dept();
		d.setId(id);
		d.setDid(did);
		d.setDname(dname);
		d.setLead(lead);
		d.setContent(content);
		d.deptUpdate();
		int rowCount=Integer.parseInt(id);
		int pageCount=0;
		if(rowCount%10==0){
			pageCount=rowCount/10;
		}else{
			pageCount=rowCount/10+1;
		}
		response.sendRedirect("Deptlist.bin?nowPage="+pageCount);
	}

}
