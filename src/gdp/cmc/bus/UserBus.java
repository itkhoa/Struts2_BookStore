package gdp.cmc.bus;

import java.sql.SQLException;

import gdp.cmc.dao.UserDao;

public class UserBus {
  
  public boolean login (String email, String password) throws ClassNotFoundException, SQLException {
    UserDao userDao = new UserDao();
    return userDao.login(email, password);
  }
}
