package gdp.cmc.test;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import gdp.cmc.bus.BookBus;
import gdp.cmc.model.Book;

public class TestBook {

  @Before
  public void setUp() throws Exception {
  }

  @After
  public void tearDown() throws Exception {
  }

  @Test
  public void testGetElementById() throws ClassNotFoundException, SQLException {
    BookBus bookBus = new BookBus();
    int id = 2;
    String actual = bookBus.getBookById(id).getTitle();
    String expect = "The God Father";
    assertEquals(expect, actual);
  }
  @Test
  public void testCase2() throws ClassNotFoundException, SQLException {
    BookBus bookBus = new BookBus();
    int id = 16;
    Book actual = bookBus.getBookById(id);
    Book expect = null;
    assertEquals(expect, actual);
  }
  @Test
  public void testCase3() throws NumberFormatException, ClassNotFoundException, SQLException {
    BookBus bookBus = new BookBus();
    int id = 0;
    Book actual = bookBus.getBookById(id);
    Book expect = null;
    assertEquals(expect, actual);
  }

}
