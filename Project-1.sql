SELECT * FROM sql_project_p1.retails_sales;


----#DATA CLEANING------------


SELECT 
COUNT(*)
FROM retails_sales;

SELECT *FROM retails_sales
WHERE
 transactions_id IS NULL
 OR
 sale_date IS NULL
 OR
 customer_id IS NULL
 OR
 age IS NULL
 OR
 price_per_unit IS NULL;
 
 # DATA EXPLORATION----------------------------------------
 
 # HOW MANY SALES WE HAVE ?
 SELECT count(*) as total_sale FROM retails_sales;
 
 # how many unique costomer we have?
 SELECT count(DISTINCT customer_id) as customer_id  FROM retails_sales;
 
 SELECT count(DISTINCT category) as total_sale  FROM retails_sales;
 
 SELECT DISTINCT category FROM retails_sales;
 
 
 # DATA ANALYSIS OR BUSINESS KEYS PROBLEMS-------------------------------------------------
 
 # 1 Write a SQL query to retrieve all columns for sales made on '2022-11-05?
 # 2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022
 # 3 Write a SQL query to calculate the total sales (total_sale) for each category
 # 4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category
 # 5 Write a SQL query to find all transactions where the total_sale is greater than 1000.
 # 6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category
 # 7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year:
 # 8 Write a SQL query to find the top 5 customers based on the highest total sales
 # 9 Write a SQL query to find the number of unique customers who purchased items from each category
 # 10 Write a SQL query to create each shift and number of orders (Example Morning <12, Afternoon Between 12 & 17, Evening >17)
 
 SELECT *FROM retails_sales
 where sale_date = '2022-11-05';
 
 #Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022
 
 -- SELECT 
--       category,
--       SUM(quantity)
-- FROM retails_sales
-- WHERE category = 'Clothing'
--   AND TO_CAHR(sale_date, 'YYYY-MM') = '2022-11'
-- GROUP BY 1 



 -- SELECT 
--   *
-- FROM retails_sales
-- WHERE 
--     category = 'Clothing'
--     AND 
--     DATE_FORMAT(sale_date, '%Y-%m') = '2022-11'

--     AND
--     quantity >= 4

# 3 Write a SQL query to calculate the total sales (total_sale) for each category
     
	                   
      
     --  SELECT 
--     category,
--     SUM(total_sale) AS net_sale,
--     COUNT(*) AS total_order
--     FROM retails_sales
-- GROUP BY category;


# 4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category

-- SELECT
-- ROUND(AVG(age),2) as avg_age
-- FROM retails_sales
-- WHERE category = 'Beauty'


 # 5 Write a SQL query to find all transactions where the total_sale is greater than 1000.
 
 
 -- SELECT * FROM retails_sales
--  WHERE total_sale >= 1000
 
 
 # 6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category
 
 -- SELECT 
--        category,
--        gender,
--        COUNT(*)  AS total_trans
--        FROM retails_sales
--        GROUP BY 
--         category,
-- 		gender
--         ORDER BY category


 # 7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year
 
	


 # 8 Write a SQL query to find the top 5 customers based on the highest total sales
 
--  select
--        customer_id,
--        SUM(total_sale) AS total_sales
--        FROM retails_sales
--        GROUP BY customer_id
--        ORDER BY total_sales DESC
--       LIMIT 5
 
  # 9 Write a SQL query to find the number of unique customers who purchased items from each category
  
  
 -- select
--        category,
--        COUNT(DISTINCT  customer_id) AS cnt_unique_customers
-- FROM retails_sales
-- GROUP BY category


 # 10 Write a SQL query to create each shift and number of orders (Example Morning <12, Afternoon Between 12 & 17, Evening >17)
 
 
 -- WITH  hourly_sale
--  AS 
--  (
--       SELECT
--       transactions_id,
--       sale_time,
--     CASE
--         WHEN HOUR(sale_time) < 12 THEN 'MORNING'
--         WHEN HOUR(sale_time) BETWEEN 12 AND 17 THEN 'AFTERNOON'
--         ELSE 'EVENING'
--     END AS shift
-- FROM retails_sales
-- )
-- SELECT 
--  shift,
--  COUNT(transactions_id) AS total_orders
--  FROM  hourly_sale
-- GROUP BY shift;
--           