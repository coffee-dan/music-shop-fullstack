package musicshop;


/**
 *
 * @author Daniel
 */
public class Shop {
    private int store_id;
    private int manager;
    private String address;
    private String weekday_hours;
    private String weekend_hours;
    
    public Shop(int store_id, int manager, String address, String weekday_hours, 
            String weekend_hours) {
        super();
        this.store_id = store_id;
        this.manager = manager;
        this.address = address;
        this.weekday_hours = weekday_hours;
        this.weekend_hours = weekend_hours;
    }
    
    public int getStoreID() { return store_id; }
    public int getManagerID() { return manager; }
    public String getAddress() { return address; }
    public String getWeekdayHours() { return weekday_hours; }
    public String getWeekendHours() { return weekend_hours; }
    
    @Override
    public String toString() {
        return String.format("Store %d at %s Managed by %d, weekday hours: %s, weekend hours %s", store_id, address, 
                manager, weekday_hours, weekend_hours);
    }
}
