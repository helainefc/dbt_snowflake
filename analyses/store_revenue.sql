SELECT
    stg.StoreID,
    SUM(fact.Revenue) AS total_revenue
FROM
    {{ ref('orders_stg') }} stg
JOIN
    {{ ref('orders_fact') }} fact ON stg.OrderID = fact.OrderID
GROUP BY 1