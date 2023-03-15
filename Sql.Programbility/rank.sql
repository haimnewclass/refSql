
with T as (select ProductId from Products where ProductID > 12),
W as (select * from Shippers),
O as (select * from Orders)
select *,NTILE(10)  over ( order by OrderId),ROW_NUMBER() over ( order by OrderId),DENSE_RANK() over ( order by OrderId),RANK() over ( order by OrderId),ROW_NUMBER() over (partition by OrderId order by OrderId)
from [Order Details] where ProductID in (select ProductId from T) and OrderId in (select OrderId from O)
