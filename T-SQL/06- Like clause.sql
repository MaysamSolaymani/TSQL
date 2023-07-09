/*Following command is an example, which will display all the records from CUSTOMERS table where SALARY starts with 200.*/

SELECT * FROM CUSTOMERS 
WHERE SALARY LIKE '200%'; 

ID   NAME     AGE     ADDRESS       SALARY 
1    Ramesh   32      Ahmedabad     2000.00 
3    kaushik  23      Kota          2000.00