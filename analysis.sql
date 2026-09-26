-- q1 what are the totol orders?
select count(*) as total_ordes from orders;

-- q2 what are the total sales?
select sum(Net_amount) as total_sales from orders;

-- q3 what are the top products?
select product,sum(net_amount) as sales
from orders
group by product
order by sales desc;

-- q4 what are the top cities?
select city,sum(net_amount) as sales
from orders
group by city
order by sales desc;

-- q5 what are the monthly sales?
select month,sum(net_amount) as sales
from orders
group by month;

-- q5 what are the highest profit products?
select product,sum(profit) as profit
from orders
group by product
order by profit desc;

-- q6 show the payment mode distribution.
select payment_mode,count(*) as total_orders
from orders
group by payment_mode;

-- q7 show the cancelled orders.
select* from orders
where Order_Status = "cancelled";
