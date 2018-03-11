package com.my.bean;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.my.util.DataBase;

public class Institution {
	private String id;
	private String name;
	private String reason;
	private String explains;
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
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getExplains() {
		return explains;
	}
	public void setExplains(String explains) {
		this.explains = explains;
	}
	public ArrayList findInstitution(){
		ArrayList ilist=new ArrayList();
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			String sql="select * from hr_institution";
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()){
				Institution mybean=new Institution();
				mybean.setId(rs.getString(1));
				mybean.setName(rs.getString(2));
				mybean.setReason(rs.getString(3));
				mybean.setExplains(rs.getString(4));
				ilist.add(mybean);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return ilist;
	}
	//½±³ÍÉ¾³ý
		public void institutionDelete(){
			try{
				DataBase db=new DataBase();
				Connection cn=db.getConnection();
				Statement st=cn.createStatement();
				String sql="delete from hr_institution where id="+id;
				st.executeUpdate(sql);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		//»ñÈ¡½±³Í
		public void institutionGet(){
			try{
				DataBase db=new DataBase();
				Connection cn=db.getConnection();
				Statement st=cn.createStatement();
				String sql="select * from hr_institution where id="+id;
				ResultSet rs=st.executeQuery(sql);
				while(rs.next()){
					this.setId(rs.getString(1));
					this.setName(rs.getString(2));
					this.setReason(rs.getString(3));
					this.setExplains(rs.getString(4));
				}
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		//½±³Í¸ü¸Ä
		public void institutionUpdate(){
			try{
				DataBase db=new DataBase();
				Connection cn=db.getConnection();
				Statement st=cn.createStatement();
				String sql="update hr_institution set name='"+name+"',reason='"+reason+"',explains='"+explains+"',createtime=now()  where id="+id;
				st.executeUpdate(sql);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		//½±³Í²åÈë
		public void institutionInsert(){
			try{
				DataBase db=new DataBase();
				Connection cn=db.getConnection();
				Statement st=cn.createStatement();
				Statement st1=cn.createStatement();
				String sql="select max(id) from hr_institution";
				ResultSet rs=st.executeQuery(sql);
				rs.next();
				int pid=rs.getInt(1)+1;
				sql="insert into hr_institution values("+pid+",'"+name+"','"+reason+"','"+explains+"',now())";
				st1.executeUpdate(sql);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
}
