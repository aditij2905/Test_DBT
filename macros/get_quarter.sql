{% macro get_quarter(CTMO_Date)%}

SELECT 
CASE WHEN EXTRACT('MONTH' FROM CTMO_Date) in (1, 2, 3) THEN Q1
     WHEN EXTRACT('MONTH' FROM CTMO_Date) in (4, 5, 6) THEN Q2
     WHEN EXTRACT('MONTH' FROM CTMO_Date) in (7, 8, 9) THEN Q3
     ELSE Q4
     end

{% endmacro %}