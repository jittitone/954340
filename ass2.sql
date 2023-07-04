select OrderDate, OrderID,  sum(Quantity * Price) as OrderTotal  from orders
join order_details using (OrderID)
join products using (ProductID)
where month(OrderDate) = "11"
group by OrderID;

select OrderDate, ShipperID, ShipperName from orders
join shippers using (ShipperID)
where month(OrderDate) = "11"
order by OrderDate desc;

select employeeID, FirstName, LastName, sum(Quantity * Price) as OrderTotal from orders
join employees using (employeeID)
join order_details using (OrderID)
join products using (ProductID)
group by employeeID
order by OrderTotal desc
limit 10;

select OrderID, ProductID from order_details
where productID in
(select ProductID from products where SupplierID in
(select SupplierID from suppliers where SupplierName = "Tokyo Traders" ));

#652110080
#652110091
#652110151





