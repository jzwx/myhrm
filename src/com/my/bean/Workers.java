package com.my.bean;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.my.util.DataBase;

public class Workers {
	private String id;
	private String wid;
	private String name;
	private String sex;
	private String age;
	private String dname;
	private String job;
	private String title;
	private String specialty;
	private String studyeffort;
	private String school;
	private String tel;
	private String email;
	private String content;
	private String search;
	
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getWid() {
		return wid;
	}
	public void setWid(String wid) {
		this.wid = wid;
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
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSpecialty() {
		return specialty;
	}
	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}
	public String getStudyeffort() {
		return studyeffort;
	}
	public void setStudyeffort(String studyeffort) {
		this.studyeffort = studyeffort;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public ArrayList findworkers(){
		ArrayList wlist=new ArrayList();
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			String sql="select * from hr_workers";
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()){
				Workers mybean=new Workers();
				mybean.setId(rs.getString(1));
				mybean.setWid(rs.getString(2));
				mybean.setName(rs.getString(3));
				mybean.setSex(rs.getString(4));
				mybean.setAge(rs.getString(5));
				mybean.setDname(rs.getString(6));
				mybean.setJob(rs.getString(7));
				mybean.setTitle(rs.getString(8));
				mybean.setSpecialty(rs.getString(9));
				mybean.setStudyeffort(rs.getString(10));
				mybean.setSchool(rs.getString(11));
				mybean.setTel(rs.getString(12));
				mybean.setEmail(rs.getString(13));
				mybean.setContent(rs.getString(14));
				wlist.add(mybean);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return wlist;
	}
	//职工删除
	public void workersDelete(){
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			String sql="delete from hr_workers where id="+id;
			st.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//查找用户
	public void getWorkers(){
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			String sql="select * from hr_workers where id="+id;
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()){
				this.setId(rs.getString(1));
				this.setWid(rs.getString(2));
				this.setName(rs.getString(3));
				this.setSex(rs.getString(4));
				this.setAge(rs.getString(5));
				this.setDname(rs.getString(6));
				this.setJob(rs.getString(7));
				this.setTitle(rs.getString(8));
				this.setSpecialty(rs.getString(9));
				this.setStudyeffort(rs.getString(10));
				this.setSchool(rs.getString(11));
				this.setTel(rs.getString(12));
				this.setEmail(rs.getString(13));
				this.setContent(rs.getString(14));
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//职工更新
	public void workersUpdate(){
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			String sql="update hr_workers set wid='"+wid+"',name='"+name+"',sex='"+sex+"',age='"+age+"',dname='"+dname+"',job='"+job+"',title='"+title+"',specialty='"+specialty+"',studyeffort='"+studyeffort+"',school='"+school+"',tel='"+tel+"',email='"+email+"',content='"+content+"',createtime=now() where id='"+id+"'";
			st.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//职工插入
	public void workersInsert(){
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			Statement st1=cn.createStatement();
			String sql="select max(id) from hr_workers";
			ResultSet rs=st.executeQuery(sql);
			rs.next();
			int pid=rs.getInt(1)+1;
			sql="insert into hr_workers values("+pid+",'"+wid+"','"+name+"','"+sex+"','"+age+"','"+dname+"','"+job+"','"+title+"','"+specialty+"','"+studyeffort+"','"+school+"','"+tel+"','"+email+"','"+content+"',+now())";
			st1.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//查找用户111
	public void Workersget(){
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			Statement st1=cn.createStatement();
			String sql="select * from hr_workers where id="+id;
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()){
				this.setId(rs.getString(1));
				this.setWid(rs.getString(2));
				this.setName(rs.getString(3));
				this.setSex(rs.getString(4));
				this.setAge(rs.getString(5));
				this.setDname(rs.getString(6));
				this.setJob(rs.getString(7));
				this.setTitle(rs.getString(8));
				this.setSpecialty(rs.getString(9));
				this.setStudyeffort(rs.getString(10));
				String sql1="select name from hr_school where id='"+rs.getString(11)+"'";
				ResultSet rs1=st1.executeQuery(sql1);
				rs1.next();
				this.setSchool(rs1.getString(1));
				this.setTel(rs.getString(12));
				this.setEmail(rs.getString(13));
				this.setContent(rs.getString(14));
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public ArrayList searchworkers(){
		ArrayList wlist=new ArrayList();
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			String sql="select * from hr_workers where name like '%"+search+"%' or id like '%"+search+"%' or job like '%"+search+"%' or wid like '%"+search+"%' or dname like '%"+search+"%' or title like '%"+search+"%'";
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()){
				Workers mybean=new Workers();
				mybean.setId(rs.getString(1));
				mybean.setWid(rs.getString(2));
				mybean.setName(rs.getString(3));
				mybean.setSex(rs.getString(4));
				mybean.setAge(rs.getString(5));
				mybean.setDname(rs.getString(6));
				mybean.setJob(rs.getString(7));
				mybean.setTitle(rs.getString(8));
				mybean.setSpecialty(rs.getString(9));
				mybean.setStudyeffort(rs.getString(10));
				mybean.setSchool(rs.getString(11));
				mybean.setTel(rs.getString(12));
				mybean.setEmail(rs.getString(13));
				mybean.setContent(rs.getString(14));
				wlist.add(mybean);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return wlist;
	}
}
