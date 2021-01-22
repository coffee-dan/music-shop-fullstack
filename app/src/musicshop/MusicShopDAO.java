package musicshop;

import java.util.*;
import java.sql.*;
import java.math.BigDecimal;

/**
 *
 * @author Daniel
 */
public class MusicShopDAO {
    private Connection myConn;
    
    public MusicShopDAO() throws Exception {
        System.out.println("-------- Establishing Oracle JDBC Connection ------");
 
        try {
            // Specify driver type
            Class.forName("oracle.jdbc.driver.OracleDriver");
        } 
        catch (ClassNotFoundException e) {
            System.out.println("Where is your Oracle JDBC Driver?");
            e.printStackTrace();
        }

        System.out.println("Oracle JDBC Driver Registered!");
        
        try {
            // Get a conneciton to database
            myConn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1533/cse1.omega.uta.edu", "dgr2815", "Apple123");
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public List<Album> getAllAlbums() throws Exception {
        List<Album> list = new ArrayList<>();
        
        Statement myStmt = null;
        ResultSet myRs = null;
        
        try {
            myStmt = myConn.createStatement();
            myRs = myStmt.executeQuery("select * "
                    + "from f18_17_album "
                    + "order by title");
        
            while (myRs.next()) {
                Album tempAlbum = convertRowToAlbum(myRs);
                list.add(tempAlbum);
            }
            
            return list;
        }
        finally {
            close(myStmt, myRs);
        }
    }
    
    public List<Album> searchAlbums(String genre) throws Exception {
        List<Album> list = new ArrayList<>();

        PreparedStatement myStmt = null;
        ResultSet myRs = null;

        try {
            String temp = '%' + genre + '%';
            genre = temp;
            myStmt = myConn.prepareStatement
            ("select distinct * "
                    + "from f18_17_album "
                    + "where genre like ? "
                    + "order by title");
            myStmt.setString(1, genre);

            myRs = myStmt.executeQuery();

            while (myRs.next()) {
                Album tempAlbum = convertRowToAlbum(myRs);
                list.add(tempAlbum);
            }

            return list;
        }
        finally {
            close(myStmt, myRs);
        }
    }
    
    public List<Inventory> retrieveInventoryValues() throws Exception {
        List<Inventory> list = new ArrayList<>();
        
        PreparedStatement myStmt = null;
        ResultSet myRs = null;
        
        try {
            myStmt = myConn.prepareStatement
            ("select coalesce(has.store_id, 'All Store') store_id, count(has.album_id) as albums_in_inventory, sum(album.sell_price) as value_of_inventory "
                    + "from f18_17_has has, f18_17_album album "
                    + "where has.album_id = album.album_id "
                    + "group by cube(store_id)");
            
            myRs = myStmt.executeQuery();
            
            while (myRs.next()) {
                Inventory tempInventory = convertRowToInventory(myRs);
                list.add(tempInventory);
            }
            
            return list;
        }
        finally {
            close(myStmt, myRs);
        }

    }
    
    public List<GenreStock> retrieveGenreStocks() throws Exception {
        List<GenreStock> list = new ArrayList<>();
        
        PreparedStatement myStmt = null;
        ResultSet myRs = null;
        
        try {
            myStmt = myConn.prepareStatement
            ("select genre, count(has.album_id) as in_stock "
                    + "from f18_17_store store, f18_17_has has, f18_17_album album "
                    + "where (has.album_id = album.album_id) and (has.store_id = store.store_id) "
                    + "group by genre");
            
            myRs = myStmt.executeQuery();
            
            while (myRs.next()) {
                GenreStock tempGenreStock = convertRowToGenreStock(myRs);
                list.add(tempGenreStock);
            }
            
            return list;
        }
        finally {
            close(myStmt, myRs);
        }

    }
    
    public List<Integer> getAlbumIDs() throws Exception {
        List<Integer> list = new ArrayList<>();
        
        PreparedStatement myStmt = null;
        ResultSet myRs = null;
        
        try {
            myStmt = myConn.prepareStatement
            ("select album_id "
                    + "from f18_17_album "
                    + "order by album_id");
            
            myRs = myStmt.executeQuery();
            
            while(myRs.next()) {
                list.add(myRs.getInt("album_id"));
            }
            
            return list;
        }
        finally {
            close(myStmt, myRs);
        }
    }
    
    public void insertExample() throws Exception {
        PreparedStatement myStmt = null;
        
        try {
            myStmt = myConn.prepareStatement
            ("insert all "
                    + "into f18_17_album values('020000', 'In The Aeroplane Over The Sea', 'Neutral Milk Hotel', NULL, 'Vinyl', '1998', 'Folk', '32.00', '25.00') "
                    + "into f18_17_album values('020001', 'In The Aeroplane Over The Sea', 'Neutral Milk Hotel', NULL, 'Vinyl', '1998', 'Folk', '32.00', '25.00') "
                    + "into f18_17_album values('020002', 'In The Aeroplane Over The Sea', 'Neutral Milk Hotel', NULL, 'CD', '1998', 'Folk', '26.50', '17.00') "
                    + "into f18_17_album values('021000', 'Birdman', 'Antonio Sanchez', NULL, 'CD', '2014', 'Jazz', '18.00', '13.00') "
                    + "into f18_17_album values('021001', 'Birdman', 'Antonio Sanchez', NULL, 'CD', '2014', 'Jazz', '18.00', '13.00') "
            + "select * from dual");
            myStmt.executeUpdate();
            
            myStmt = myConn.prepareStatement
            ("insert all "
                    + "into f18_17_buys_from values('1002', '01', '020000', '9-Dec-2018') "
                    + "into f18_17_buys_from values('1002', '02', '020001', '9-Dec-2018') "
                    + "into f18_17_buys_from values('1001', '04', '020002', '9-Dec-2018') "
                    + "into f18_17_buys_from values('1003', '01', '021000', '9-Dec-2018') "
                    + "into f18_17_buys_from values('1003', '05', '021001', '9-Dec-2018') "
            + "select * from dual");
            myStmt.executeUpdate();
            
            myStmt = myConn.prepareStatement
            ("insert all "
                    + "into f18_17_has values('01', '020000') "
                    + "into f18_17_has values('02', '020001') "
                    + "into f18_17_has values('04', '020002') "
                    + "into f18_17_has values('01', '021000') "
                    + "into f18_17_has values('05', '021001') "
            + "select * from dual");
            myStmt.executeUpdate();
        }
        finally {
            myStmt.close();
        }
    }
    
    public void updateExample() throws Exception {
        PreparedStatement myStmt = null;
        
        try {
            myStmt = myConn.prepareStatement
            ("update f18_17_album set sell_price = '20.00' where title = 'Ys'");
            myStmt.executeUpdate();
            
            myStmt = myConn.prepareStatement
            ("update f18_17_album set sell_price = '14.00' where title = 'Repeater'");
            myStmt.executeUpdate();
            
            myStmt = myConn.prepareStatement
            ("update f18_17_has set store_id = '03' where album_id = '17002'");
            myStmt.executeUpdate();
        }
        finally {
            myStmt.close();
        }
    }
    
    public void deleteExample() throws Exception {
        PreparedStatement myStmt = null;
        
        try {
            myStmt = myConn.prepareStatement
            ("delete from f18_17_album where title = 'Cheetah'");
            myStmt.executeUpdate();
            
            myStmt = myConn.prepareStatement
            ("delete from f18_17_has where album_id like '800%'");
            myStmt.executeUpdate();
            
            myStmt = myConn.prepareStatement
            ("delete from f18_17_buys_from where album_id like '800%'");
            myStmt.executeUpdate();
            
            myStmt = myConn.prepareStatement
            ("delete from f18_17_sells_to where album_id like '800%'");
            myStmt.executeUpdate();
        }
        finally {
            myStmt.close();
        }
    }
    
    private Album convertRowToAlbum(ResultSet myRs) throws SQLException {
        
        int album_id = myRs.getInt("album_id");
        String title = myRs.getString("title");
        String main_artist = myRs.getString("main_artist");
        String feat_artist = myRs.getString("feat_artist");
        int year = myRs.getInt("year");
        String genre = myRs.getString("genre");
        BigDecimal sell_price = myRs.getBigDecimal("sell_price");
        BigDecimal buy_price = myRs.getBigDecimal("buy_price");
        

        Album tempAlbum = new Album(album_id, title, main_artist, feat_artist, 
                year, genre, sell_price, buy_price);
        
        return tempAlbum;
    }
    
    private Inventory convertRowToInventory(ResultSet myRs) throws SQLException {
        
        String store_id = myRs.getString("store_id");
        int num_of_albums = myRs.getInt("albums_in_inventory");
        int value = myRs.getInt("value_of_inventory");
        
        Inventory tempInventory = new Inventory(store_id, num_of_albums, value);
        
        return tempInventory;
    }
    
    private GenreStock convertRowToGenreStock(ResultSet myRs) throws SQLException {
        
        String genre = myRs.getString("genre");
        int in_stock = myRs.getInt("in_stock");
        
        GenreStock tempGenreStock = new GenreStock(genre, in_stock);
        
        return tempGenreStock;
    }
    
    private void close(Connection myConn, Statement myStmt, ResultSet myRs)
		throws SQLException {

        if (myRs != null) {
            myRs.close();
        }

	if (myStmt != null) {
            myStmt.close();
	}
		
	if (myConn != null) {
            myConn.close();
        }
    }
    
    private void close(Statement myStmt, ResultSet myRs) throws SQLException {
		close(null, myStmt, myRs);		
    }
    
}
