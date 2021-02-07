package DAO;

import java.io.PrintWriter;
import java.sql.Connection;
import java.util.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import VO.Reg_Vo;

public class Reg_Dao 
{
	public void insert(Reg_Vo v)
	{
		try 
		
		{

			Class.forName("com.mysql.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost/demodb","root","root");
			Statement s=c.createStatement();
			s.executeUpdate("insert into test(Firstname,Lastname) values('"+v.getFn()+"','"+v.getLn()+"')");
			s.close();
			c.close();	
		} 
		catch (Exception e) {
			e.printStackTrace();
		}			
	}
	
	
	
	/*public List search(Reg_Vo v)
	{
		List ls=new ArrayList();
		int id1=0;
		String fn1="";
		String ln1="";
		try 
		{

			Class.forName("com.mysql.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost/demodb","root","root");
			Statement s=c.createStatement();
			ResultSet rs=s.executeQuery("select * from test where Firstname='"+v.getFn()+"' and Lastname='"+v.getLn()+"'");
			
			while(rs.next())
			{
				Reg_Vo v1=new  Reg_Vo();
				id1=rs.getInt("Id");
				 fn1=rs.getString("Firstname");
				 ln1=rs.getString("Lastname");
				
				
				v1.setId(id1);
				v1.setFn(fn1);
				v1.setLn(ln1);
				ls.add(v1);
			}
			s.close();
			c.close();	
		} 
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}			
	
		return ls;
	}*/	
	
	
	
	public List search1(Reg_Vo v)
	{
		List ls=new ArrayList();
		int id1=0;
		String fn1="";
		String ln1="";
		try 
		{

			Class.forName("com.mysql.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost/demodb","root","root");
			Statement s=c.createStatement();
			ResultSet rs=s.executeQuery("select * from test");
			
			while(rs.next())
			{
				Reg_Vo v1=new  Reg_Vo();
				id1=rs.getInt("Id");
				 fn1=rs.getString("Firstname");
				 ln1=rs.getString("Lastname");
				
				
				v1.setId(id1);
				v1.setFn(fn1);
				v1.setLn(ln1);
				ls.add(v1);
			}
			s.close();
			c.close();	
		} 
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}			
		
		return ls;
	}
	
	
	
	
	public void delete(Reg_Vo v)
	{
		try 
		{
		
			Class.forName("com.mysql.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost/demodb","root","root");
			Statement s=c.createStatement();
			s.executeUpdate("delete from test where Id='"+v.getId()+"'");
			s.close();
			c.close();	

		} 
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();

		}		
	}
	

	
	public List edit(Reg_Vo v)
	{
	List ls=new ArrayList();
	int id1=0;
	String fn1="";
	String ln1="";
	try 
	{

		Class.forName("com.mysql.jdbc.Driver");
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost/demodb","root","root");
		Statement s=c.createStatement();
		ResultSet rs=s.executeQuery("select * from test where Id="+v.getId());
		
		while(rs.next())
		{
			Reg_Vo v1=new  Reg_Vo();
			id1=rs.getInt("Id");
			 fn1=rs.getString("Firstname");
			 ln1=rs.getString("Lastname");
			
			
			v1.setId(id1);
			v1.setFn(fn1);
			v1.setLn(ln1);
			ls.add(v1);
		}
		s.close();
		c.close();	
		} 
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}			
		
		return ls;
	}
	
	
	

	public void update(Reg_Vo v)
	{
		try 
		{
		
			Class.forName("com.mysql.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost/demodb","root","root");
			Statement s=c.createStatement();
			s.executeUpdate("update test set Firstname='"+v.getFn()+"',Lastname='"+v.getLn()+"' where Id="+v.getId());
			s.close();
			c.close();	

		} 
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();

		}		
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
