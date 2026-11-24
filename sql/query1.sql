SELECT FIRST_NAME,
       CASE
           WHEN UPPER(SUBSTR(FIRST_NAME, 1, 1)) IN ('A','E','I','O','U')
           THEN 'comença per vocal'
           ELSE 'comença per consonant'
       END AS TIPUS
FROM EMPLOYEES
ORDER BY TIPUS ASC, FIRST_NAME DESC;
