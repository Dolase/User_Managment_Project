package com.usermanagment.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.usermanagment.model.User;
import com.usermanagment.util.CreateConnection;

public class UserDaoImpl implements UserDao{

	Connection con=CreateConnection.initConnection();
	
	@Override
	public List<User> ListOfAllUser() {
		List<User> ulist=new ArrayList<>();
		try {
			PreparedStatement ps=con.prepareStatement("select * from users");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				User user=new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
				ulist.add(user);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return ulist;
	}
	
	public int insertUserData(User u) {
		int x=0;
		try {
			
			PreparedStatement ps= con.prepareStatement("insert into users value(?,?,?,?)");
			
			ps.setInt(1,u.getId());
			ps.setString(2, u.getName());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getCountry());
			
			 x=ps.executeUpdate();
			 System.out.println("rows are inserted ");
		} catch (Exception e) {
			System.out.println(e);
		}
		 return x;		
	}

	@Override
	public String updateUserData(int i,String n, String e, String c) {
		String res=null;
		try {
			PreparedStatement ps=con.prepareStatement("update users set name=?,email=?,country=? where id=? ");
			
			ps.setString(1, n);
			ps.setString(2, e);
			ps.setString(3, c);
			ps.setInt(4, i);
			
			int x =ps.executeUpdate();
			 if(x > 0)
			 return res="success";
			 else return "failure";
		} catch (Exception e1) {
		System.out.println(e1);	
		}
		return res;
	}

	@Override
	public int deleteUserData(int i) {
		int x=0;
		try {
	
			PreparedStatement ps= con.prepareStatement("delete from users where id=?");
			
			ps.setInt(1, i);
		     x=ps.executeUpdate();
			 System.out.println("rows are updated ");
		} catch (Exception e) {
		System.out.println(e);	
		}
		return x;
	}

	

	@Override
	public User fetchUserById(int i) {
		User u=new User();
		try {
			PreparedStatement ps= con.prepareStatement("select * from users where id=?");
			ps.setInt(1, i);
		     ResultSet rs=(ResultSet) ps.executeQuery();
		     while(rs.next())
		     {
		    	 u.setId(rs.getInt(1));
		    	 u.setName(rs.getString(2));
                 u.setEmail(rs.getString(3));
                 u.setCountry(rs.getString(4));
		     }
		    
		     
		} catch (Exception e) {
		System.out.println(e);	 
		}
		
		return u;
	}

}
