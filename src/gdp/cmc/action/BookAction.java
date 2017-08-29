package gdp.cmc.action;

import java.sql.SQLException;
import java.util.List;

import gdp.cmc.bus.BookBus;
import gdp.cmc.model.*;
public class BookAction {
  private List<Book> list;
  private Book book;
  private String id;

  public List<Book> getList() {
    return list;
  }
  public void setList(List<Book> list) {
    this.list = list;
  }
  
  public Book getBook() {
    return book;
  }
  public void setBook(Book book) {
    this.book = book;
  }
  
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }
  public String execute() {
    return "success";
  }
  public String getAllBook() throws ClassNotFoundException, SQLException {
    BookBus bookBus = new BookBus();
    this.list = bookBus.getAllBook();
    this.list.get(1).getAuthorName();
    return "success";
  }
  
  public String getBookById() throws NumberFormatException, ClassNotFoundException, SQLException {
    BookBus bookBus = new BookBus();
    System.out.println(id);
    book = bookBus.getBookById(Integer.parseInt(id));
    return "success";
  }
}
