-- Ad-hoc queries

prompt Tablulate the number of albums that each store and the whole company have in stock, then 
prompt calculate the value of these albums.
SELECT
	COALESCE(has.store_id, 'All Stores') store_id,
	COUNT(has.album_id) AS albums_in_inventory,
	SUM(album.sell_price) AS value_of_inventory
FROM
	f18_17_has has,
	f18_17_album album
WHERE
	has.album_id = album.album_id
GROUP BY
	CUBE(store_id);
	
prompt Tabulate the number of albums that have been purchased by each store and the whole company,
prompt then calculate the cost and value of these purchases.
SELECT
	COALESCE(store_id, 'All Stores') store_id,
	COUNT(purchases.album_id) AS albums_purchased,
	SUM(album.buy_price) AS cost_of_purchases,
	SUM(album.sell_price) AS value_of_purchases
FROM
	f18_17_buys_from purchases,
	f18_17_album album
WHERE
	purchases.album_id = album.album_id
GROUP BY
	CUBE(store_id);

prompt Tabulate the number of albums sold by each store and the whole company, then calculate the 
prompt revenue assosicated with these sales.
SELECT
	COALESCE(sales.store_id, 'All Stores') store_id,
	COUNT(sales.album_id) AS albums_sold,
	SUM(album.sell_price) AS revenue
	--album.sell_price - album.buy_price AS profit
FROM
	f18_17_sells_to sales,
	f18_17_album album
WHERE
	sales.album_id = album.album_id
GROUP BY
	CUBE(store_id);

prompt This query finds albums of a given genre and displays which store has them
prompt in stock and what the price is.
SELECT DISTINCT
	title, 
	main_artist,
	has.store_id,
	sell_price
FROM
	f18_17_album,
	f18_17_has has
WHERE
	genre = 'Rock';

prompt List customer visits to stores by based on which store they visit.
SELECT DISTINCT
	customer_id AS ID,
	customer.name,
	sell_date,
	store_id
FROM
	f18_17_sells_to sales,
	f18_17_individual customer
ORDER BY
	store_id;
	
prompt By genre, this lists what is in stock across all stores.
SELECT
	genre,
	COUNT(has.album_id) AS in_stock
FROM
	f18_17_store store,
	f18_17_has has,
	f18_17_album album
WHERE
	(album.album_id = has.album_id) AND (has.store_id = store.store_id)
GROUP BY
	genre;



/* prompt something else
SELECT
	genre,
	COUNT(has.album_id) AS in_stock,
FROM
	f18_17_store store,
	f18_17_has has,
	f18_17_album album
WHERE
	(album.album_id = has.album_id) AND (has.store_id = store.store_id);
	
SELECT
	COUNT(sales.album_id) AS sold
FROM
	f18_17_store store,
	f18_17_sells_to sales
WHERE
	sales.store_id = store.store_id; */
