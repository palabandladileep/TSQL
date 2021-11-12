CREATE FUNCTION udfProductsInYear (@model_year varchar(10))
RETURNS TABLE
AS
RETURN
    SELECT 
        order_id,
        customer_id,
        store_id,
		staff_id,
		order_date,
		order_status
FROM sales.orders
WHERE order_date = @model_year;

SELECT * from udfProductsInYear(2018);

 ALTER FUNCTION udfProductsInYear (
    @start_date varchar(10),
    @end_date varchar(10)
)
RETURNS TABLE
AS
RETURN
    SELECT 
       order_id,
        customer_id,
        store_id,
		staff_id,
		order_date,
		order_status
FROM sales.orders
WHERE order_date BETWEEN @start_date AND @end_date

SELECT * from udfProductsInYear(2017,2018)