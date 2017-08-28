package gdp.cmc.model;

public class Book {
  private int bookId;
  
  private String title;
  
  private String sku;
  
  private String publishYear;
  
  private double price;
  
  private String images;
  
  private String description;
  
  private String authorName;
  
  private String publishName;
  
  private String typeName;

  public Book() {
    super();
  }
  
  /**
   * 
   * @param bookId
   * 
   * @param title
   * 
   * @param sku
   * 
   * @param publishYear
   * 
   * @param price
   * 
   * @param images
   * 
   * @param description
   * 
   * @param authorName
   * 
   * @param publishName
   * 
   * @param typeName
   * .
   */
  public Book(int bookId, String title, String sku, String publishYear, float price, String images, String description,
      String authorName, String publishName, String typeName) {
    super();
    this.bookId = bookId;
    this.title = title;
    this.sku = sku;
    this.publishYear = publishYear;
    this.price = price;
    this.images = images;
    this.description = description;
    this.authorName = authorName;
    this.publishName = publishName;
    this.typeName = typeName;
  }
  
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

  public double getPrice() {
    return price;
  }

  public void setPrice(double price) {
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
  
  
}
