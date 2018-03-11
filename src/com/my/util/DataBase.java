package com.my.util;
import java.sql.*;
public class DataBase {
	public Connection getConnection(){
		Connection cn=null;
		try{
			Class.forName("org.gjt.mm.mysql.Driver");
			cn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/db_hr","root","123456");
		}catch(Exception e){
			e.printStackTrace();
		}
		return cn;
	}
}
