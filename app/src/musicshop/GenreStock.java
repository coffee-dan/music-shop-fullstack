package musicshop;

/**
 *
 * @author Daniel
 */
public class GenreStock {
    private String genre;
    private int in_stock;
    
    public GenreStock(String genre, int in_stock) {
        super();
        this.genre = genre;
        this.in_stock = in_stock;
    }
    
    public String getGenre() { return genre; }
    public int getInStock() { return in_stock; }
    
    @Override
    public String toString() {
        return String.format("Genre %s: In Inventory: %d", genre, in_stock);
    }
}
