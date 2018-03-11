package com.my.bean;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.my.util.DataBase;

public class Stipend {
	private int id;
	private int sid;
	private String name;
	private float basic;
	private float eat;
	private float house;
	private float duty;
	private float scot;
	private float punishment;
	private float other;
	private String granttime;
	private float totalize;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public float getBasic() {
		return basic;
	}
	public void setBasic(float basic) {
		this.basic = basic;
	}
	public float getEat() {
		return eat;
	}
	public void setEat(float eat) {
		this.eat = eat;
	}
	public float getHouse() {
		return house;
	}
	public void setHouse(float house) {
		this.house = house;
	}
	public float getDuty() {
		return duty;
	}
	public void setDuty(float duty) {
		this.duty = duty;
	}
	public float getScot() {
		return scot;
	}
	public void setScot(float scot) {
		this.scot = scot;
	}
	public float getPunishment() {
		return punishment;
	}
	public void setPunishment(float punishment) {
		this.punishment = punishment;
	}
	public float getOther() {
		return other;
	}
	public void setOther(float other) {
		this.other = other;
	}
	public String getGranttime() {
		return granttime;
	}
	public void setGranttime(String granttime) {
		this.granttime = granttime;
	}
	public float getTotalize() {
		return totalize;
	}
	public void setTotalize(float totalize) {
		this.totalize = totalize;
	}
	//薪金查看
		public ArrayList findstipend(){
			ArrayList slist=new ArrayList();
			try{
				DataBase db=new DataBase();
				Connection cn=db.getConnection();
				Statement st=cn.createStatement();
				String sql="select * from hr_stipend";
				ResultSet rs=st.executeQuery(sql);
				while(rs.next()){
					Stipend mybean=new Stipend();
					mybean.setId(rs.getInt(1));
					mybean.setSid(rs.getInt(2));
					mybean.setName(rs.getString(3));
					mybean.setBasic(rs.getFloat(4));
					mybean.setEat(rs.getFloat(5));
					mybean.setHouse(rs.getFloat(6));
					mybean.setDuty(rs.getFloat(7));
					mybean.setScot(rs.getFloat(8));
					mybean.setPunishment(rs.getFloat(9));
					mybean.setOther(rs.getFloat(10));
					mybean.setGranttime(rs.getString(11));
					mybean.setTotalize(rs.getFloat(12));
					slist.add(mybean);
				}
			}catch(Exception e){
				e.printStackTrace();
			}
			return slist;
		}
		//薪金删除
		public void stipendDelete(){
			try{
				DataBase db=new DataBase();
				Connection cn=db.getConnection();
				Statement st=cn.createStatement();
				String sql="delete from hr_stipend where id="+id;
				st.executeUpdate(sql);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		//薪金更改
		public void stipendUpdate(){
			try{
				DataBase db=new DataBase();
				Connection cn=db.getConnection();
				Statement st=cn.createStatement();
				String sql="update hr_stipend set sid="+sid+",name='"+name+"',basic="+basic+",eat="+eat+",house="+house+",duty="+duty+",scot="+scot+",punishment="+punishment+",other="+other+",granttime='"+granttime+"',totalize="+totalize+" where id="+id;
				st.executeUpdate(sql);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		//获取薪金
		public void stipendGet(){
			try{
				DataBase db=new DataBase();
				Connection cn=db.getConnection();
				Statement st=cn.createStatement();
				String sql="select * from hr_stipend where id="+id;
				ResultSet rs=st.executeQuery(sql);
				while(rs.next()){
					this.setId(rs.getInt(1));
					this.setSid(rs.getInt(2));
					this.setName(rs.getString(3));
					this.setBasic(rs.getFloat(4));
					this.setEat(rs.getFloat(5));
					this.setHouse(rs.getFloat(6));
					this.setDuty(rs.getFloat(7));
					this.setScot(rs.getFloat(8));
					this.setPunishment(rs.getFloat(9));
					this.setOther(rs.getFloat(10));
					this.setGranttime(rs.getString(11));
					this.setTotalize(rs.getFloat(12));
				}
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		//薪金插入
		public void stipendInsert(){
			try{
				DataBase db=new DataBase();
				Connection cn=db.getConnection();
				Statement st=cn.createStatement();
				Statement st1=cn.createStatement();
				String sql="select max(id) from hr_stipend";
				ResultSet rs=st.executeQuery(sql);
				rs.next();
				int pid=rs.getInt(1)+1;
				sql="insert into hr_stipend values("+pid+","+sid+",'"+name+"',"+basic+","+eat+","+house+","+duty+","+scot+","+punishment+","+other+",'"+granttime+"',"+totalize+")";
				st1.executeUpdate(sql);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
}
