package com.arken.projectname.web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import com.arken.connection.InitCon;

public class SaveProjectDB 
{
	
	public static int SaveProject(int cid,String projectname)
	{
		int status = 0;
			try
			{
				InitCon it = new InitCon();
				
				Connection con = it.InitConnection();
				PreparedStatement ps;
				
				con.setAutoCommit(false);
				ps = con.prepareStatement("insert into project_master(cus_id,project_name) values(?,?)");
				ps.setInt(1, cid);
				ps.setString(2, projectname);
				ps.executeUpdate();
				con.commit();
				
				status = 1;
				
			}
			catch(SQLException e)
			{
				e.printStackTrace();
				
			}
			return status;
	}
}
