package gdp.cmc.action;

import java.sql.SQLException;


import gdp.cmc.bus.UserBus;
import gdp.cmc.model.User;

public class AccessAction {
  private String username;
  private String password;

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String execute () throws ClassNotFoundException, SQLException {
    UserBus userBus = new UserBus();
    User user = new User();
    user.setEmail(username);
    user.setPassword(password);
    if (userBus.login(user.getEmail(), user.getPassword())) {
      
      return "success";
    } else {
      return "error";
    }
  }
  
}
