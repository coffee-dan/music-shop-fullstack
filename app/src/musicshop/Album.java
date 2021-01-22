package musicshop;

import java.math.BigDecimal;

/**
 *
 * @author Daniel
 */
public class Album {
    private int album_id;
    private String title;
    private String main_artist;
    private String feat_artist;
    private int year;
    private String genre;
    private BigDecimal sell_price;
    private BigDecimal buy_price;
    
    public Album(int album_id, String title, String main_artist, 
            String feat_artist, int year, String genre, BigDecimal sell_price,
            BigDecimal buy_price) {
        super();
        this.album_id = album_id;
        this.title = title;
        this.main_artist = main_artist;
        this.feat_artist = feat_artist;
        this.year = year;
        this.genre = genre;
        this.sell_price = sell_price;
        this.buy_price = buy_price;
    }
    
    public int getID() { return album_id; }
    public String getTitle() { return title; }
    public String getMainArtist() { return main_artist; }
    public String getFeatArtist() { return feat_artist; }
    public int getYear() { return year; }
    public String getGenre() { return genre; }
    public BigDecimal getSellPrice() { return sell_price; }
    public BigDecimal getBuyPrice() { return buy_price; }
    
    @Override
    public String toString() {
        return String.format("[%d] %s - %s ft. %s, %d, %s, (Sell %s, Buy %s)", 
                album_id, title, main_artist, feat_artist, year, genre, 
                sell_price, buy_price);
    }
}
