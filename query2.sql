-- 1. View the order_details table.
select*from order_details order by order_date;
-- 2. What is the date range of the table?
select min(order_date), max(order_date) from order_details;
-- 3. How many orders were made within this date range?
select count(distinct order_id) from order_details;
-- 4. How many items were ordered within this date range?
select count(*) from order_details;
-- 5. Which orders had the most number of items?
select order_id,count(item_id) as num_items from order_details group by order_id order by num_items desc; 
-- 6. How many orders had more than 12 items?
select order_id,count(item_id) as num_items from order_details group by order_id having num_items > 12 order by num_items; 