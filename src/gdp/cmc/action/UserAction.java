package gdp.cmc.action;

import java.sql.SQLException;
import java.util.Date;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

import gdp.cmc.bus.UserBus;
import gdp.cmc.model.User;

public class UserAction {
  
  private String email;
  private String password;
  
  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String checkLogin () throws ClassNotFoundException, SQLException {
    UserBus userBus = new UserBus();
    User user = new User();
    user.setEmail(email);
    user.setPassword(password);
    System.out.println(email);
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
  
  public String logout () {
    Map<String, Object> session = (Map<String, Object>) ActionContext.getContext().getSession();
    System.out.println("Logout");
    session.remove("logined");
    session.remove("context");
    session.remove("email");
    return "success";
  }
}
