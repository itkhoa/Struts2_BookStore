package gdp.cmc.action;

import java.sql.SQLException;
import java.util.List;

import gdp.cmc.bus.BookBus;
import gdp.cmc.model.*;
public class BookAction {
  private List<Book> list;

  public List<Book> getList() {
    return list;
  }
  public void setList(List<Book> list) {
    this.list = list;
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
}
