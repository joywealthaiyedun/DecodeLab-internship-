CREATE DATABASE DECODELAB
SELECT * FROM [decodelab dataset]

SELECT
    OrderID,
    Product,
    Quantity,
    TotalPrice
FROM [decodelab dataset]

        CHECKING FOR NULL

        SELECT
    SUM(CASE WHEN OrderID IS NULL THEN 1 ELSE 0 END) AS OrderID_Nulls,
    SUM(CASE WHEN Date IS NULL THEN 1 ELSE 0 END) AS Date_Nulls,
    SUM(CASE WHEN CustomerID IS NULL THEN 1 ELSE 0 END) AS CustomerID_Nulls,
    SUM(CASE WHEN Product IS NULL THEN 1 ELSE 0 END) AS Product_Nulls,
    SUM(CASE WHEN Quantity IS NULL THEN 1 ELSE 0 END) AS Quantity_Nulls,
    SUM(CASE WHEN UnitPrice IS NULL THEN 1 ELSE 0 END) AS UnitPrice_Nulls,
    SUM(CASE WHEN ShippingAddress IS NULL THEN 1 ELSE 0 END) AS ShippingAddress_Nulls,
    SUM(CASE WHEN PaymentMethod IS NULL THEN 1 ELSE 0 END) AS PaymentMethod_Nulls,
    SUM(CASE WHEN OrderStatus IS NULL THEN 1 ELSE 0 END) AS OrderStatus_Nulls,
    SUM(CASE WHEN TrackingNumber IS NULL THEN 1 ELSE 0 END) AS TrackingNumber_Nulls,
    SUM(CASE WHEN ItemsInCart IS NULL THEN 1 ELSE 0 END) AS ItemsInCart_Nulls,
    SUM(CASE WHEN CouponCode IS NULL THEN 1 ELSE 0 END) AS CouponCode_Nulls,
    SUM(CASE WHEN ReferralSource IS NULL THEN 1 ELSE 0 END) AS ReferralSource_Nulls,
    SUM(CASE WHEN TotalPrice IS NULL THEN 1 ELSE 0 END) AS TotalPrice_Nulls
FROM [decodelab dataset]

       CHECKING FOR DUPLICATES
    
    SELECT *
FROM [decodelab dataset]
GROUP BY
    OrderID,
    Date,
    CustomerID,
    Product,
    Quantity,
    UnitPrice,
    ShippingAddress,
    PaymentMethod,
    OrderStatus,
    TrackingNumber,
    ItemsInCart,
    CouponCode,
    ReferralSource,
    TotalPrice
HAVING COUNT(*) > 1

     CHECKING BLANK VALUES

     SELECT *
FROM [decodelab dataset]
WHERE
    Product = ''
    OR CustomerID = ''
    OR PaymentMethod = ''
    OR OrderStatus = ''

    WHERE 

    SELECT *
FROM [decodelab dataset]
WHERE TotalPrice > 1000

SELECT *
FROM [decodelab dataset]
WHERE PaymentMethod = 'Online'

SELECT *
FROM [decodelab dataset]
WHERE OrderStatus = 'Delivered'

        ORDER BY

  HIGHEST REVENUE ORDER 
  
       SELECT
    OrderID,
    Product,
    TotalPrice
FROM [decodelab dataset]
ORDER BY TotalPrice DESC

   LOWEST REVENUE ORDER

   SELECT
    OrderID,
    Product,
    TotalPrice
FROM [decodelab dataset]

    AGGREGATE FUNCTIONS

    TOTAL REVENUE

    SELECT
    SUM(TotalPrice) AS Total_Revenue
FROM [decodelab dataset]

   AVERAGE ORDER VALUE

   SELECT
    AVG(TotalPrice) AS Avg_Order_Value
FROM [decodelab dataset]

   TOTAL ORDER

   SELECT
    COUNT(OrderID) AS Total_Orders
FROM [decodelab dataset]

    GROUP BY ANALYSIS

   REVENUE BY PRODUCT
   
   SELECT
    Product,
    SUM(TotalPrice) AS Revenue
FROM [decodelab dataset]
GROUP BY Product
ORDER BY Revenue DESC


   ORDER BY PAYMENT METHOD

   SELECT
    PaymentMethod,
    COUNT(*) AS Orders
FROM [decodelab dataset]
GROUP BY PaymentMethod
ORDER BY Orders DESC

   ORDER BY REFERRAL SOURCE

   SELECT
    ReferralSource,
    COUNT(*) AS Orders
FROM [decodelab dataset]
GROUP BY ReferralSource
ORDER BY Orders DESC

   REVENUE BY YEAR

   SELECT
    YEAR(Date) AS Year,
    SUM(TotalPrice) AS Revenue
FROM [decodelab dataset]
GROUP BY YEAR(Date)
ORDER BY Year

   HAVING

   SELECT
    Product,
    SUM(TotalPrice) AS Revenue
FROM [decodelab dataset]
GROUP BY Product
HAVING SUM(TotalPrice) > 160000
ORDER BY Revenue DESC
