package com.my.bean;

import java.util.ArrayList;

import com.my.util.DataBase;
import java.sql.*;
public class School {
	private String id;
	private String name;
	private String schoolclass;
	private String content;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSchoolclass() {
		return schoolclass;
	}
	public void setSchoolclass(String schoolclass) {
		this.schoolclass = schoolclass;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	//学校查看
	public ArrayList findschool(){
		ArrayList slist=new ArrayList();
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			String sql="select * from hr_school";
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()){
				School mybean=new School();
				mybean.setId(rs.getString(1));
				mybean.setName(rs.getString(2));
				mybean.setSchoolclass(rs.getString(3));
				mybean.setContent(rs.getString(4));
				slist.add(mybean);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return slist;
	}
	//学校删除
	public void schoolDelete(){
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			String sql="delete from hr_school where id="+id;
			st.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//获取学校
	public void schoolGet(){
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			String sql="select * from hr_school where id="+id;
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()){
				this.setId(rs.getString(1));
				this.setName(rs.getString(2));
				this.setSchoolclass(rs.getString(3));
				this.setContent(rs.getString(4));
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//学校更改
	public void schoolUpdate(){
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			String sql="update hr_school set name='"+name+"',class='"+schoolclass+"',content='"+content+"' where id="+id;
			st.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//学校插入
	public void schoolInsert(){
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			Statement st1=cn.createStatement();
			String sql="select max(id) from hr_school";
			ResultSet rs=st.executeQuery(sql);
			rs.next();
			int pid=rs.getInt(1)+1;
			sql="insert into hr_school values("+pid+",'"+name+"','"+schoolclass+"','"+content+"')";
			st1.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public ArrayList getschool(){
		ArrayList slist=new ArrayList();
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			String sql="select id,name from hr_school";
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()){
				School mybean=new School();
				mybean.setId(rs.getString(1));
				mybean.setName(rs.getString(2));
				slist.add(mybean);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return slist;
	}
}
