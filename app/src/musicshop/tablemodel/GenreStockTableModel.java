package musicshop.tablemodel;

import java.util.List;
import javax.swing.table.AbstractTableModel;
import musicshop.GenreStock;

/**
 *
 * @author Daniel
 */
public class GenreStockTableModel extends AbstractTableModel {

	private static final int GENRE_COL = 0;
	private static final int IN_STOCK_COL = 1;

	private final String[] columnNames = { "Genre", "In Stock" };
	private List<GenreStock> genreStocks;

	public GenreStockTableModel(List<GenreStock> theGenreStocks) {
		genreStocks = theGenreStocks;
	}

	@Override
	public int getColumnCount() {
		return columnNames.length;
	}

	@Override
	public int getRowCount() {
		return genreStocks.size();
	}

	@Override
	public String getColumnName(int col) {
		return columnNames[col];
	}

	@Override
	public Object getValueAt(int row, int col) {

		GenreStock tempGenreStock = genreStocks.get(row);

		switch (col) {
		case GENRE_COL:
			return tempGenreStock.getGenre();
		case IN_STOCK_COL:
			return tempGenreStock.getInStock();
		default:
			return tempGenreStock.getGenre();
		}
	}
}
