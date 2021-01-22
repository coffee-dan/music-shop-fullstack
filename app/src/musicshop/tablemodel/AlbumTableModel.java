package musicshop.tablemodel;

import java.util.List;
import javax.swing.table.AbstractTableModel;
import musicshop.Album;

/**
 *
 * @author Daniel
 */
public class AlbumTableModel extends AbstractTableModel {

	private static final int ALBUM_ID_COL = 0;
	private static final int TITLE_COL = 1;
	private static final int MAIN_ARTIST_COL = 2;
	private static final int FEAT_ARTIST_COL = 3;
        private static final int YEAR_COL = 4;
        private static final int GENRE_COL = 5;
        private static final int SELL_PRICE_COL = 6;
        private static final int BUY_PRICE_COL = 7;

	private final String[] columnNames = { "Album ID", "Title", "Main Artist",
			"Feat Artist", "Year", "Genre", "Sell Price", "Buy Price" };
	private List<Album> albums;

	public AlbumTableModel(List<Album> theAlbums) {
		albums = theAlbums;
	}

	@Override
	public int getColumnCount() {
		return columnNames.length;
	}

	@Override
	public int getRowCount() {
		return albums.size();
	}

	@Override
	public String getColumnName(int col) {
		return columnNames[col];
	}

	@Override
	public Object getValueAt(int row, int col) {

		Album tempAlbum = albums.get(row);

		switch (col) {
		case ALBUM_ID_COL:
			return tempAlbum.getID();
		case TITLE_COL:
			return tempAlbum.getTitle();
		case MAIN_ARTIST_COL:
			return tempAlbum.getMainArtist();
		case FEAT_ARTIST_COL:
			return tempAlbum.getFeatArtist();
                case YEAR_COL:
			return tempAlbum.getYear();
                case GENRE_COL:
			return tempAlbum.getGenre();
                case SELL_PRICE_COL:
			return tempAlbum.getSellPrice();
                case BUY_PRICE_COL:
			return tempAlbum.getBuyPrice();
		default:
			return tempAlbum.getID();
		}
	}

	/*@Override
	public Class getColumnClass(int c) {
		return getValueAt(0, c).getClass();
	}*/
}
