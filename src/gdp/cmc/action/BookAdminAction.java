package gdp.cmc.action;

import java.sql.SQLException;

import gdp.cmc.bus.BookBus;
import gdp.cmc.model.Book;

public class BookAdminAction {
  private int bookId;
  
  private String title;
  
  private String sku;
  
  private String publishYear;
  
  private String price;
  
  private String images;
  
  private String description;
  
  private String authorName;
  
  private String publishName;
  
  private String typeName;

  public int getBookId() {
    return bookId;
  }

  public void setBookId(int bookId) {
    this.bookId = bookId;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public String getSku() {
    return sku;
  }

  public void setSku(String sku) {
    this.sku = sku;
  }

  public String getPublishYear() {
    return publishYear;
  }

  public void setPublishYear(String publishYear) {
    this.publishYear = publishYear;
  }

  public String getPrice() {
    return price;
  }

  public void setPrice(String price) {
    this.price = price;
  }

  public String getImages() {
    return images;
  }

  public void setImages(String images) {
    this.images = images;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public String getAuthorName() {
    return authorName;
  }

  public void setAuthorName(String authorName) {
    this.authorName = authorName;
  }

  public String getPublishName() {
    return publishName;
  }

  public void setPublishName(String publishName) {
    this.publishName = publishName;
  }

  public String getTypeName() {
    return typeName;
  }

  public void setTypeName(String typeName) {
    this.typeName = typeName;
  }
  
  public String execute() throws ClassNotFoundException, SQLException {
    System.out.println(title);
    Book book = new Book();
    book.setTitle(title);
    book.setSku(sku);
    book.setPrice(Double.parseDouble(price));
    book.setDescription(description);
    book.setImages(images);
    book.setPublishYear(publishYear);
    book.setAuthorName(authorName);
    book.setTypeName(typeName);
    
    BookBus bookBus = new BookBus();
    if (bookBus.insert(book)) {
      return "success";
    } else {
      return "error";
    }
  }
  
}
