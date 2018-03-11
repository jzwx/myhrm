package com.my.bean;

import java.util.ArrayList;

import com.my.util.DataBase;
import java.sql.*;
public class Dept {
	private String id;
	private String did;
	private String dname;
	private String lead;
	private String content;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDid() {
		return did;
	}
	public void setDid(String did) {
		this.did = did;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getLead() {
		return lead;
	}
	public void setLead(String lead) {
		this.lead = lead;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public ArrayList finddept(){
		ArrayList dlist=new ArrayList();
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			String sql="select * from hr_dept";
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()){
				Dept mybean=new Dept();
				mybean.setId(rs.getString(1));
				mybean.setDid(rs.getString(2));
				mybean.setDname(rs.getString(3));
				mybean.setLead(rs.getString(4));
				mybean.setContent(rs.getString(5));
				dlist.add(mybean);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return dlist;
	}
	//部门删除
	public void deptDelete(){
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			String sql="delete from hr_dept where id="+id;
			st.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//获取部门
	public void deptGet(){
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			String sql="select * from hr_dept where id="+id;
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()){
				this.setId(rs.getString(1));
				this.setDid(rs.getString(2));
				this.setDname(rs.getString(3));
				this.setLead(rs.getString(4));
				this.setContent(rs.getString(5));
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//部门更改
	public void deptUpdate(){
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			String sql="update hr_dept set did='"+did+"',dname='"+dname+"',lead='"+lead+"',content='"+content+"' where id="+id;
			st.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//部门插入
		public void deptInsert(){
			try{
				DataBase db=new DataBase();
				Connection cn=db.getConnection();
				Statement st=cn.createStatement();
				Statement st1=cn.createStatement();
				String sql="select max(id) from hr_dept";
				ResultSet rs=st.executeQuery(sql);
				rs.next();
				int pid=rs.getInt(1)+1;
				sql="insert into hr_dept values("+pid+",'"+did+"','"+dname+"','"+lead+"','"+content+"')";
				st1.executeUpdate(sql);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		public ArrayList deptcount(){
			ArrayList dclist=new ArrayList();
			try{
				DataBase db=new DataBase();
				Connection cn=db.getConnection();
				Statement st=cn.createStatement();
				String sql="select distinct dname from hr_dept";
				ResultSet rs=st.executeQuery(sql);
				while(rs.next()){
					Dept mybean=new Dept();
					mybean.setDname(rs.getString(1));
					dclist.add(mybean);
				}
			}catch(Exception e){
				e.printStackTrace();
			}
			return dclist;
		}
}
