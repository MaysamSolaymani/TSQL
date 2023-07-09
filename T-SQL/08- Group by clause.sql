Consider the CUSTOMERS table is having the following records −

ID  NAME       AGE       ADDRESS          SALARY 
1   Ramesh     32        Ahmedabad        2000.00 
2   Khilan     25        Delhi            1500.00 
3   kaushik    23        Kota             2000.00 
4   Chaitali   25        Mumbai           6500.00 
5   Hardik     27        Bhopal           8500.00 
6   Komal      22        MP               4500.00 
7   Muffy      24        Indore           10000.00 

If you want to know the total amount of salary on each customer, then following will be the GROUP BY query.

SELECT NAME, SUM(SALARY) as [sum of salary] FROM CUSTOMERS 
   GROUP BY NAME;

The above command will produce the following output.

NAME        sum of salary 
Chaitali    6500.00 
Hardik      8500.00 
kaushik     2000.00 
Khilan      1500.00 
Komal       4500.00 
Muffy       10000.00 
Ramesh      2000.00

Let us now consider the following CUSTOMERS table having the following records with duplicate names.

ID  NAME       AGE       ADDRESS           SALARY 
1   Ramesh     32        Ahmedabad         2000.00 
2   Khilan     25        Delhi             1500.00 
3   kaushik    23        Kota              2000.00 
4   Chaitali   25        Mumbai            6500.00 
5   Hardik     27        Bhopal            8500.00 
6   Komal      22        MP                4500.00 
7   Muffy      24        Indore            10000.00 

If we want to know the total amount of salary on each customer, then following will be GROUP BY query.

SELECT NAME, SUM(SALARY) as [sum of salary] FROM CUSTOMERS 
   GROUP BY NAME 

The above command will produce the following output.

NAME        sum of salary 
Hardik      8500.00 
kaushik     8500.00 
Komal       4500.00 
Muffy       10000.00 
Ramesh      3500.00 
