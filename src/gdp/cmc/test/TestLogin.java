package gdp.cmc.test;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import gdp.cmc.bus.UserBus;

public class TestLogin {

  @Before
  public void setUp() throws Exception {
  }

  @After
  public void tearDown() throws Exception {
  }

  @Test
  public void testLoginSuccess() throws ClassNotFoundException, SQLException {
    UserBus userBus = new UserBus();
    String email = "khoa@gmail.com";
    String password = "1234";
    boolean actual = userBus.login(email, password);
    boolean expect = true;
    assertEquals(expect, actual);
  }
  @Test
  public void testLoginFail() throws ClassNotFoundException, SQLException {
    UserBus userBus = new UserBus();
    String email = "khoa";
    String password = "1234";
    boolean actual = userBus.login(email, password);
    boolean expect = false;
    assertEquals(expect, actual);
  }
  @Test
  public void testLoginWithEmptyEmail() throws ClassNotFoundException, SQLException {
    UserBus userBus = new UserBus();
    String email = "";
    String password = "1234";
    boolean actual = userBus.login(email, password);
    boolean expect = false;
    assertEquals(expect, actual);
  }
}
