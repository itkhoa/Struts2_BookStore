package gdp.cmc.action;

import java.sql.SQLException;
import java.util.Date;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

import gdp.cmc.bus.UserBus;
import gdp.cmc.model.User;

public class UserAction {
  private User user;
  
  public User getUser() {
    return user;
  }

  public void setUser(User user) {
    this.user = user;
  }

  public String checkLogin () throws ClassNotFoundException, SQLException {
    UserBus userBus = new UserBus();
    System.out.println(user.getEmail());
    if (userBus.login(user.getEmail(), user.getPassword())) {
      Map<String, Object> session = (Map<String, Object>) ActionContext.getContext().getSession();
      ((Map<String,Object>) session).put("logined", "true");
      ((Map<String,Object>) session).put("context", new Date());
      ((Map<String,Object>) session).put("email", user.getEmail());
      return "success";
    } else {
      return "error";
    }
  }
}
