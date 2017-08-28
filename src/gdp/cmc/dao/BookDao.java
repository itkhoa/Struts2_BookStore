package gdp.cmc.dao;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import gdp.cmc.model.Book;
import gdp.cmc.utility.ConnectDb;

public class BookDao {
  public boolean insert(Book book) throws ClassNotFoundException, SQLException {
    Connection connect = ConnectDb.connect();
    String sql = "Insert into Books values (?,?,?,?,?,?,?,?)";
    PreparedStatement prepare = connect.prepareStatement(sql);
    connect.setAutoCommit(false);
    prepare.setString(1, book.getTitle());
    prepare.setString(2, book.getSku());
    prepare.setString(3, book.getPublishYear());
    prepare.setBigDecimal(4, new BigDecimal(book.getPrice()));
    prepare.setString(5, book.getImages());
    prepare.setString(6, book.getDescription());
    prepare.setString(7, book.getAuthorName());
    prepare.setString(8, book.getTypeName());
    connect.setAutoCommit(true);
    try {
      prepare.executeUpdate();
    } catch (Exception e) {
      e.printStackTrace();
      return false;
    } finally {
      connect.close();
    }
    return true;
  }
  
  public List<Book> getAllBook() throws SQLException, ClassNotFoundException {
    Connection connect = ConnectDb.connect();
    List<Book> list = new ArrayList<Book>();
    String sql = "select * from Books";
    Statement statement = connect.createStatement();
    try {
      ResultSet rs = statement.executeQuery(sql);
      while (rs.next()) {
        Book book = new Book();
        book.setBookId(rs.getInt(1));
        
        book.setTitle(rs.getString(2));
        
        book.setSku(rs.getString(3));
        
        book.setPublishYear(rs.getString(4));
        
        book.setPrice(rs.getFloat(5));
        
        book.setImages(rs.getString(6));
        
        book.setDescription(rs.getString(7));
        //get author name of book
        book.setAuthorName(rs.getString(8));
        
        book.setTypeName(rs.getString(9));
        
        list.add(book);
      }
    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      connect.close();
    }
    return list;
  }
  public Book getItemById(int id) throws SQLException, ClassNotFoundException {
    Connection connect = ConnectDb.connect();
    Book book = new Book();
    String sql = "select * from Books where bookID = ?";
    PreparedStatement prepare = connect.prepareStatement(sql);
    prepare.setInt(1, id);
    try {
      ResultSet rs = prepare.executeQuery();
      if (rs.next()) {
        book.setBookId(rs.getInt(1));
        book.setTitle(rs.getString(2));
        book.setSku(rs.getString(3));
        book.setPublishYear(rs.getString(4));
        book.setPrice(rs.getFloat(5));
        book.setImages(rs.getString(6));
        book.setDescription(rs.getString(7));
        book.setAuthorName(rs.getString(8));
        book.setTypeName(rs.getString(9));
        return book;
      } else {
        return null;
      }
    } catch (Exception e) {
      e.printStackTrace();
      return null;
    } finally {
      connect.close();
    }
  }

}
