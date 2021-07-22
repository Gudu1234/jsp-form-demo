package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Login {
    public static boolean validate(String username, String psw){
        boolean status = false;
        try{
            Connection con = ConnectionProvider.getCon();
            PreparedStatement ps = con.prepareStatement("select * from resume where username=? and password=?");
            ps.setString(1,username);
            ps.setString(2,psw);

            System.out.println(ps);
            ResultSet rs = ps.executeQuery();
            System.out.println(rs);
            status = rs.next();
            System.out.println(status);
        }catch(Exception e){
            System.out.println(e.getMessage());
        }

        return status;
    }
}
