package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import dbutil.DBUtil;
import java.sql.SQLException;
import pojo.SignUpInfo;

public class SignUpDAO {

    public static boolean isUserValid(SignUpInfo userDetails)
    {
        boolean validStatus = false;
        try
        {
            String u=userDetails.getUserName();
             String p=userDetails.getPassword();
            
             Connection conn = DBUtil.getConnection();
            Statement st= conn.createStatement();
            ResultSet rs;
            ResultSet r;
            st.executeUpdate("Insert into login_info values ("+"\""+u+"\""+","+"\""+p+"\""+");");
            r=st.executeQuery("SELECT * FROM login_info WHERE user_name = '"+userDetails.getUserName()+"' AND password = '"+userDetails.getPassword()+"'");
            while(r.next())
            {
                validStatus = true;
            }

            DBUtil.closeConnection(conn);

        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        
        return validStatus;
    }
}
