SELECT
    DATE_TRUNC('MONTH', o_orderdate) AS PERIOD,
    c.C_CUSTKEY,
    c.C_NAME,
    SUM(o.O_TOTALPRICE) AS TOTAL_REVENUE
FROM CUSTOMERS_VAD c
JOIN ORDERS_VAD o ON c.C_CUSTKEY = o.O_CUSTKEY
GROUP BY ALL
ORDER BY
    PERIOD DESC


    -- SELECT * FROM ORDERS_VAD C LIMIT 10
    