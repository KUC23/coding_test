-- 코드를 입력하세요
SELECT
    YEAR(SALES_DATE) AS YEAR,
    MONTH(SALES_DATE) AS MONTH,
    GENDER,
    COUNT(DISTINCT ONLINE_SALE.USER_ID) AS USERS
FROM USER_INFO 

LEFT JOIN ONLINE_SALE 
ON USER_INFO.USER_ID = ONLINE_SALE.USER_ID

WHERE SALES_DATE IS NOT NULL AND GENDER IS NOT NULL

GROUP BY 
YEAR, MONTH, GENDER

ORDER BY 
YEAR ASC, MONTH ASC, GENDER ASC