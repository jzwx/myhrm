package com.my.bean;

import java.util.ArrayList;

import com.my.util.DataBase;
import java.sql.*;
public class Job {
	private String id;
	private String jid;
	private String jname;
	private String jlead;
	private String dname;
	private String person;
	private String content;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getJid() {
		return jid;
	}
	public void setJid(String jid) {
		this.jid = jid;
	}
	public String getJname() {
		return jname;
	}
	public void setJname(String jname) {
		this.jname = jname;
	}
	public String getJlead() {
		return jlead;
	}
	public void setJlead(String jlead) {
		this.jlead = jlead;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getPerson() {
		return person;
	}
	public void setPerson(String person) {
		this.person = person;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public ArrayList findjob(){
		ArrayList jlist=new ArrayList();
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			String sql="select * from hr_job";
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()){
				Job mybean=new Job();
				mybean.setId(rs.getString(1));
				mybean.setJid(rs.getString(2));
				mybean.setJname(rs.getString(3));
				mybean.setJlead(rs.getString(4));
				mybean.setDname(rs.getString(5));
				mybean.setPerson(rs.getString(6));
				mybean.setContent(rs.getString(7));
				jlist.add(mybean);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return jlist;
	}
	//岗位删除
	public void jobDelete(){
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			String sql="delete from hr_job where id="+id;
			st.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//获取学校
	public void jobGet(){
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			String sql="select * from hr_job where id="+id;
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()){
				this.setId(rs.getString(1));
				this.setJid(rs.getString(2));
				this.setJname(rs.getString(3));
				this.setJlead(rs.getString(4));
				this.setDname(rs.getString(5));
				this.setPerson(rs.getString(6));
				this.setContent(rs.getString(7));
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//部门更改
	public void jobUpdate(){
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			String sql="update hr_job set jid='"+jid+"',jname='"+jname+"',jlead='"+jlead+"',dname='"+dname+"',person='"+person+"',content='"+content+"' where id="+id;
			st.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//部门插入
	public void jobInsert(){
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			Statement st1=cn.createStatement();
			String sql="select max(id) from hr_job";
			ResultSet rs=st.executeQuery(sql);
			rs.next();
			int pid=rs.getInt(1)+1;
			sql="insert into hr_job values("+pid+",'"+jid+"','"+jname+"','"+jlead+"','"+dname+"','"+person+"','"+content+"')";
			st1.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
