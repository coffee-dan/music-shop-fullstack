package musicshop.tablemodel;

import java.util.List;
import javax.swing.table.AbstractTableModel;
import musicshop.Inventory;
/**
 *
 * @author Daniel
 */
public class InventoryValueTableModel extends AbstractTableModel {

	private static final int STORE_ID_COL = 0;
	private static final int ALBUMS_IN_INVENTORY_COL = 1;
	private static final int VALUE_OF_INVENTORY_COL = 2;

	private final String[] columnNames = { "Store ID", "Albums in Inventory", 
			"Value of Inventory" };
	private List<Inventory> inventories;

	public InventoryValueTableModel(List<Inventory> theInventories) {
		inventories = theInventories;
	}

	@Override
	public int getColumnCount() {
		return columnNames.length;
	}

	@Override
	public int getRowCount() {
		return inventories.size();
	}

	@Override
	public String getColumnName(int col) {
		return columnNames[col];
	}

	@Override
	public Object getValueAt(int row, int col) {

		Inventory tempInventory = inventories.get(row);

		switch (col) {
		case STORE_ID_COL:
			return tempInventory.getID();
		case ALBUMS_IN_INVENTORY_COL:
			return tempInventory.getNumOfAlbums();
		case VALUE_OF_INVENTORY_COL:
			return tempInventory.getValue();
		default:
			return tempInventory.getID();
		}
	}

}
