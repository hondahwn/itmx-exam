-- Answer #1
SELECT
  agents.AGENT_CODE,
  agents.AGENT_NAME,
  SUM(orders.ORD_AMOUNT) AS TOTAL_ORDER_AMOUNT
FROM
  agents
JOIN
  orders ON agents.AGENT_CODE = orders.AGENT_CODE
GROUP BY
  agents.AGENT_CODE,
  agents.AGENT_NAME
ORDER BY
  TOTAL_ORDER_AMOUNT DESC


-- Answer #2

SELECT
  customer.CUST_CODE,
  customer.CUST_NAME,
  SUM(orders.ORD_AMOUNT) AS TOTAL_AMOUNT_SPENT
FROM
  customer
JOIN
  orders ON customer.CUST_CODE = orders.CUST_CODE
GROUP BY
  customer.CUST_CODE,
  customer.CUST_NAME
HAVING
  TOTAL_AMOUNT_SPENT > 5000.00;

-- Answer #3
SELECT
  AGENT_CODE,
  COUNT(*) AS TOTAL_ORDERS
FROM
  orders
WHERE
  YEAR(ORD_DATE) = 2008
  AND MONTH(ORD_DATE) = 7
GROUP BY
  AGENT_CODE;