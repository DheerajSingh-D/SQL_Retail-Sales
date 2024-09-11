_________-SQL Retails sales Analysis.
 Create Table Retail_sales
(
transactions_id	int primary key , 
sale_date date,	
sale_time time ,	
customer_id	int ,
gender	varchar(10),
age	int,
category varchar(20),	
quantiy	int,
price_per_unit	float ,
cogs decimal(10),	
total_sale int
)
Select*from Retail_sales

Select *from Retail_sales
limit 10

select count(*)
from Retail_sales 

Select*from Retail_sales
where transactions_id is null
or 
sale_date is null 
or 
sale_time is null 
or 
customer_id is null 
or 
gender is null
or 
age	 is null 
or 
category is null 
or 
quantiy is null 
or 
price_per_unit is  null
or 
cogs  is null
or
total_sale is null ;

----- Delete 
Delete from
where transactions_id is null
or 
sale_date is null 
or 
sale_time is null 
or 
customer_id is null 
or 
gender is null
or 
age	 is null 
or 
category is null 
or 
quantiy is null 
or 
price_per_unit is  null
or 
cogs  is null
or
total_sale is null ;

select*from retail_sales

Select*from Retail_sales
where transactions_id is null
or 
sale_date is null 
or 
sale_time is null 
or 
customer_id is null 
or 
gender is null
or 
age	 is null 
or 
category is null 
or 
quantiy is null 
or 
price_per_unit is  null
or 
cogs  is null
or
total_sale is null ;

DELETE FROM retail_sales
WHERE transactions_id IS NULL
   OR sale_date IS NULL
   OR sale_time IS NULL
   OR customer_id IS NULL
   OR gender IS NULL
   OR age IS NULL
   OR category IS NULL
   OR quantiy IS NULL
   OR price_per_unit IS NULL
   OR cogs IS NULL
   OR total_sale IS NULL;

select * from retail_sales

____ Data exploration 
_______How many sales we have ------

Select count(*) as total_sale from retail_sales

select count(*) from retail_sales

---- Unique customer 

Select count(distinct customer_id)as total_sale from retail_sales

Select distinct category from retail_sales

-------Business key-------

-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05

select *from retail_sales
where sale_date = '2022-11-05';

-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022
 
select 
     category, 
     sum (quantiy)
from retail_sales
where category = 'Clothing'
	AND
	to_char( sale_date ,'yyyy-mm') ='2022-11'
group by 1

-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.

select*from retail_sales

select
      category , 
       sum(total_sale)as net_sale,
       COUNT(*)as total_orders

from retail_sales
group by 1

-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
 select
     Round (Avg(age),2) as avg_age
from retail_sales
where category = 'Beauty'

-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000

select*from retail_sales
where total_sale > 1000

-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.

select
      category,
      gender, 
      count (*) as total_trans
from retail_sales
group by category,
          gender
order by 1

-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year
select 
	   Extract (year from sale_date) as year,
        Extract (month from sale_date) as Month,
	Avg(Total_sale)
	RANK over(Partition by extract( year from sale_date)order by avg(total_sale) desc) AS rank
	from retail_sales 
Group  by 1, 2

-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales 
select
	Customer_id ,
	Sum(total_sale) as total_sales
	From retail_sales
	group by 1
	order by 2 Desc
	limit 5
from retail_sales
	
-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category
	
select
     category,
    count(Distinct customer_id) 
from retail_sales
Group by category

-- Q.10 Write a SQL query to create each shift and number of orders

select*,
	 CASE
	      when extract(hour from sale_time) < 12 then 'Morning'
	      when extract(hour from sale_time) between 12 and 17 then 'Afternoon'
	else 'Evening'
	End as shift
	from retail_sales
	

___End of project---





























