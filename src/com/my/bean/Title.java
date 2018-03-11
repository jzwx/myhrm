package com.my.bean;
import java.sql.*;
import java.util.ArrayList;

import com.my.util.DataBase;
public class Title {
	private String id;
	private String tid;
	private String tname;
	private String jname;
	private String content;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getJname() {
		return jname;
	}
	public void setJname(String jname) {
		this.jname = jname;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public ArrayList findtitle(){
		ArrayList tlist=new ArrayList();
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			String sql="select * from hr_title";
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()){
				Title mybean=new Title();
				mybean.setId(rs.getString(1));
				mybean.setTid(rs.getString(2));
				mybean.setTname(rs.getString(3));
				mybean.setJname(rs.getString(4));
				mybean.setContent(rs.getString(5));
				tlist.add(mybean);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return tlist;
	}
	//职称删除
		public void titleDelete(){
			try{
				DataBase db=new DataBase();
				Connection cn=db.getConnection();
				Statement st=cn.createStatement();
				String sql="delete from hr_title where id="+id;
				st.executeUpdate(sql);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		//查找职称
		public void getTitle(){
			try{
				DataBase db=new DataBase();
				Connection cn=db.getConnection();
				Statement st=cn.createStatement();
				String sql="select * from hr_title where id="+id;
				ResultSet rs=st.executeQuery(sql);
				while(rs.next()){
					this.setId(rs.getString(1));
					this.setTid(rs.getString(2));
					this.setTname(rs.getString(3));
					this.setJname(rs.getString(4));
					this.setContent(rs.getString(5));
				}
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		//职称更新
		public void titleUpdate(){
			try{
				DataBase db=new DataBase();
				Connection cn=db.getConnection();
				Statement st=cn.createStatement();
				String sql="update hr_title set tid='"+tid+"',tname='"+tname+"',jname='"+jname+"',content='"+content+"' where id='"+id+"'";
				st.executeUpdate(sql);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		//职称插入
		public void titleInsert(){
			try{
				DataBase db=new DataBase();
				Connection cn=db.getConnection();
				Statement st=cn.createStatement();
				Statement st1=cn.createStatement();
				String sql="select max(id) from hr_title";
				ResultSet rs=st.executeQuery(sql);
				rs.next();
				int pid=rs.getInt(1)+1;
				sql="insert into hr_title values("+pid+",'"+tid+"','"+tname+"','"+jname+"','"+content+"')";
				st1.executeUpdate(sql);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
}
