package com.my.bean;

import com.my.util.DataBase;
import java.sql.*;
import java.util.ArrayList;
public class User {
	private String id;
	private String username;
	private String password;
	private String name;
	private String sex;
	private String birthday;
	private String createtime;
	private String isadmin;
	private String email;
	private String content;
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
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
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getCreatetime() {
		return createtime;
	}
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
	public String getIsadmin() {
		return isadmin;
	}
	public void setIsadmin(String isadmin) {
		this.isadmin = isadmin;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	//管理员用户
	public boolean Vali(){
		boolean falg=false;
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			String sql="select * from hr_user where username='"+username+"' and password='"+password+"' and isadmin='"+isadmin+"'";
			ResultSet rs=st.executeQuery(sql);
			if(rs.next()){
				falg=true;
			}else{
				falg=false;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return falg;
	}
	
	
	public ArrayList finduser(){
		ArrayList ulist=new ArrayList();
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			String sql="select * from hr_user";
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()){
				User mybean=new User();
				mybean.setId(rs.getString(1));
				mybean.setUsername(rs.getString(2));
				mybean.setPassword(rs.getString(3));
				mybean.setName(rs.getString(4));
				mybean.setSex(rs.getString(5));
				mybean.setBirthday(rs.getString(6));
				mybean.setCreatetime(rs.getString(7));
				mybean.setIsadmin(rs.getString(8));
				mybean.setEmail(rs.getString(9));
				mybean.setContent(rs.getString(10));
		//		System.out.println(rs.getString(10));
				ulist.add(mybean);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return ulist;
	}
	//用户删除
	public void userDelete(){
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			String sql="delete from hr_user where id="+id;
			st.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//查找用户
	public void getUser(){
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			String sql="select * from hr_user where id="+id;
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()){
				this.setId(rs.getString(1));
				this.setUsername(rs.getString(2));
				this.setPassword(rs.getString(3));
				this.setName(rs.getString(4));
				this.setSex(rs.getString(5));
				this.setBirthday(rs.getString(6));
				this.setCreatetime(rs.getString(7));
				this.setIsadmin(rs.getString(8));
				this.setEmail(rs.getString(9));
				this.setContent(rs.getString(10));
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//用户更新
	public void userUpdate(){
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			String sql="update hr_user set username='"+username+"',password='"+password+"',name='"+name+"',sex='"+sex+"',birthday='"+birthday+"',isadmin='"+isadmin+"',content='"+content+"' where id='"+id+"'";
			st.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//用户插入
	public void userInsert(){
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			Statement st1=cn.createStatement();
			String sql="select max(id) from hr_user";
			ResultSet rs=st.executeQuery(sql);
			rs.next();
			int pid=rs.getInt(1)+1;
			sql="insert into hr_user values("+pid+",'"+username+"','"+password+"','"+name+"','"+sex+"','"+birthday+"',now(),'"+isadmin+"','254866196@qq.com','"+content+"')";
			st1.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	//用户密码修改
		public void passwdUpdate(){
			try{
				DataBase db=new DataBase();
				Connection cn=db.getConnection();
				Statement st=cn.createStatement();
				String sql="update hr_user set password='"+password+"' where username='"+username+"'";
				st.executeUpdate(sql);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		//查找信息
		public void getInformation(){
			try{
				DataBase db=new DataBase();
				Connection cn=db.getConnection();
				Statement st=cn.createStatement();
				String sql="select * from hr_user where username='"+username+"'";
				ResultSet rs=st.executeQuery(sql);
				if(rs.next()){
					this.setId(rs.getString(1));
					this.setUsername(rs.getString(2));
					this.setPassword(rs.getString(3));
					this.setName(rs.getString(4));
					this.setSex(rs.getString(5));
					this.setBirthday(rs.getString(6));
					this.setCreatetime(rs.getString(7));
					this.setIsadmin(rs.getString(8));
					this.setEmail(rs.getString(9));
					this.setContent(rs.getString(10));
				}
			}catch(Exception e){
				e.printStackTrace();
			}
		}
}
