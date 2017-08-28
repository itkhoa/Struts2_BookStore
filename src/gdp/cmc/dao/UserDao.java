package gdp.cmc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import gdp.cmc.utility.ConnectDb;
import gdp.cmc.model.*;

public class UserDao {
  
  
  public List<User> getAllUser() throws SQLException, ClassNotFoundException {
    Connection connect = ConnectDb.connect();
    List<User> list = new ArrayList<User>();
    String sql = "select * from User";
    Statement statement = connect.createStatement();
    try {
      ResultSet rs = statement.executeQuery(sql);
      while (rs.next()) {
        User user = new User();
        user.setEmail(rs.getString(1));
        user.setPassword(rs.getString(2));
        list.add(user);
      }
    } catch(Exception e) {
      e.printStackTrace();
      return null;
    } finally {
      connect.close();
    }
    return list;
  }
  
  public boolean login (String email, String password) throws SQLException, ClassNotFoundException {
    Connection connect = ConnectDb.connect();
    String sql = "select * from [dbo].[User] where email = ? and password = ?";
    PreparedStatement prepare = connect.prepareStatement(sql);
    prepare.setString(1, email);
    prepare.setString(2, password);
    try {
      ResultSet rs = prepare.executeQuery();
      if(rs.next()) {
        return true;
      } else {
        return false;
      }
    } catch (Exception e) {
      e.printStackTrace();
      return false;
    } finally {
      connect.close();
    }
  }
}
