package bean;

import java.sql.*;

public class Register {

    public static int register(User u){
        int status = 0;
        try{
            Connection con = ConnectionProvider.getCon();
            PreparedStatement ps = con.prepareStatement("insert into resume values(?,?,?,?,?)");
            ps.setString(1,u.getUusername());
            ps.setString(2,u.getUemail());
            ps.setString(3,u.getUname());
            ps.setString(4,u.getUpass());
            ps.setString(5,u.getUphone());

            System.out.println(ps);
            status = ps.executeUpdate();
        }catch(Exception e){
            System.out.println(e.getMessage());
        }

        return status;
    }

}
