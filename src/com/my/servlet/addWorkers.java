package com.my.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.my.bean.Institution;
import com.my.bean.Workers;

public class addWorkers extends HttpServlet {

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
		request.setCharacterEncoding("GBK");
		String wid=request.getParameter("wid");
		String name=request.getParameter("name");
		String sex=request.getParameter("sex");
		String age=request.getParameter("age");
		String dname=request.getParameter("dname");
		String job=request.getParameter("job");
		String title=request.getParameter("title");
		String specialty=request.getParameter("specialty");
		String studyeffort=request.getParameter("studyeffort");
		String school=request.getParameter("school");
		String tel=request.getParameter("tel");
		String email=request.getParameter("email");
		String content=request.getParameter("content");
		Workers w=new Workers();
		w.setWid(wid);
		w.setName(name);
		w.setSex(sex);
		w.setAge(age);
		w.setDname(dname);
		w.setJob(job);
		w.setTitle(title);
		w.setSpecialty(specialty);
		w.setStudyeffort(studyeffort);
		w.setSchool(school);
		w.setTel(tel);
		w.setEmail(email);
		w.setContent(content);
		w.workersInsert();
		response.sendRedirect("Workerslist.bin");
	}

}
