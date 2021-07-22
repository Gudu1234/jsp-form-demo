package bean;

import java.sql.*;

public class UserData {
    public static User getRecordByUsername(String username){
        User u = null;
        try{
            Connection con= ConnectionProvider.getCon();;
            PreparedStatement ps=con.prepareStatement("select * from resume where username=?");
            ps.setString(1, username);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                u = new User();
                u.setUusername(rs.getString("username"));
                u.setUemail(rs.getString("email"));
                u.setUphone(rs.getString("phone"));
                u.setUname(rs.getString("name"));
            }
        }catch(Exception e){System.out.println(e);}
        return u;
    }
}
