package musicshop;

/**
 *
 * @author Daniel
 */
public class Inventory {
    private String store_id;
    private int num_of_albums;
    private int value;
    
    public Inventory(String store_id, int num_of_albums, int value) {
        super();
        this.store_id = store_id;
        this.num_of_albums = num_of_albums;
        this.value = value;
    }
    
    public String getID() { return store_id; }
    public int getNumOfAlbums() { return num_of_albums; }
    public int getValue() { return value; }
    
    @Override
    public String toString() {
        return String.format("Store %s: In Inventory: %d, value: %d", store_id, 
                num_of_albums, value);
    }
}
