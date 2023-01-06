-- Ім'я вендора який продав найдешевший товар
select v.vend_name from vendors v 
join products p on p.vend_id = v.vend_id 
join orderitems o on o.prod_id = p.prod_id 
order by o.item_price asc 
limit 1;

-- Який PROD_ID товару з найкоротшою назвою?
select p.prod_id from products p 
order by LENGTH(p.prod_name) asc 
limit 1;

-- Вивести ім’я та країну покупця, як єдине поле client_name, для тих 
-- покупців, що мають замовлення. Результат вивести у верхньому регістрі. 
select UPPER(CONCAT(c.cust_name, ' ', c.cust_state)) as client_name from customers c
where (select count(1) from orders o where o.cust_id = c.cust_id) > 0;
