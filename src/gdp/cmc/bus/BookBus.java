package gdp.cmc.bus;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import gdp.cmc.dao.BookDao;
import gdp.cmc.model.Book;

public class BookBus {
  public List<Book> getAllBook () throws ClassNotFoundException, SQLException {
    List<Book> list = new ArrayList<Book>();
    BookDao bookDao = new BookDao();
    list =  bookDao.getAllBook();
    return list;
  } 
  
  public Book getBookById(int id) throws ClassNotFoundException, SQLException {
    BookDao bookDao = new BookDao();
    return bookDao.getItemById(id);
  }
}
