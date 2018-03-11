package com.my.bean;

import com.my.util.DataBase;
import java.sql.*;
public class Page {
	private int nowPage=1;
	private int row=10;
	private int col=1;
	public int getNowPage() {
		return nowPage;
	}
	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}
	public int getRow() {
		return row;
	}
	public void setRow(int row) {
		this.row = row;
	}
	public int getCol() {
		return col;
	}
	public void setCol(int col) {
		this.col = col;
	}
	public int getpageSize(){
		return row*col;
	}
	public int getrowCount(String dbname){
		int count=0;
		try{
			DataBase db=new DataBase();
			Connection cn=db.getConnection();
			Statement st=cn.createStatement();
			String sql="select count(id) from "+dbname;
		//	System.out.println(sql);
			ResultSet rs=st.executeQuery(sql);
			if(rs.next()){
				count=rs.getInt(1);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return count;
	}
	public int getpageCount(String dbname){
		int pageCount=0;
		int rowCount=this.getrowCount(dbname);
		if(rowCount%this.getpageSize()==0){
			pageCount=rowCount/this.getpageSize();
		}else{
			pageCount=rowCount/this.getpageSize()+1;
		}
		return pageCount;
	}
}
