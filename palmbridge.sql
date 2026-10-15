create database palmbridge;
use palmbridge;

select * from palmbridge;

select count(order_id) from palmbridge;

--total sales
select sum(sales) as total_sales
from palmbridge;

--total profit
select sum(profit) as total_profit
from palmbridge;

--sales by categorie wise
select Category,sum(sales) as total_sales
from palmbridge
group by Category;

--profit by categories
select Category,sum(profit) as total_sales
from palmbridge
group by Category;

--avg sales by categories
select Category,round(avg(Discount),2) as avg_Discount from palmbridge
group by Category;

--yearly sales
select year(Order_Date) as year ,round(sum(sales),2) as yearly_sales
from palmbridge
group by year(Order_Date);

--customer segment performance
select Customer_Segment,sum(quantity) as Customer_Segment_wise_quantity,
sum(sales) as Customer_Segment_wise_sales
from palmbridge
group by Customer_Segment;

--high discount transactions
select * from palmbridge
where Discount>=(select max(Discount) from palmbridge);


