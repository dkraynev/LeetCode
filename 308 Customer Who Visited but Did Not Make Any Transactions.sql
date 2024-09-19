# Write your MySQL query statement below
SELECT
    customer_id,
    COUNT(V.visit_id) AS count_no_trans
FROM
    Visits V
    LEFT OUTER JOIN
        Transactions T
    ON
        V.visit_id =  T.visit_id
WHERE
    T.visit_id IS NULL 
GROUP BY
    customer_id;
