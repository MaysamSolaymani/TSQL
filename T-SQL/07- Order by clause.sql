Consider the CUSTOMERS table having the following records −

ID  NAME       AGE       ADDRESS            SALARY 
1   Ramesh     32        Ahmedabad          2000.00 
2   Khilan     25        Delhi              1500.00 
3   kaushik    23        Kota               2000.00 
4   Chaitali   25        Mumbai             6500.00 
5   Hardik     27        Bhopal             8500.00 
6   Komal      22        MP                 4500.00 
7   Muffy      24        Indore             10000.00 

Following command is an example, which would sort the result in ascending order by NAME and SALARY.

SELECT * FROM CUSTOMERS 
   ORDER BY NAME, SALARY 

The above command will produce the following output.

ID  NAME       AGE       ADDRESS           SALARY 
4   Chaitali   25        Mumbai            6500.00 
5   Hardik     27        Bhopal            8500.00 
3   kaushik    23        Kota              2000.00 
2   Khilan     25        Delhi             1500.00 
6   Komal      22        MP                4500.00 
7   Muffy      24        Indore            10000.00 
1   Ramesh     32        Ahmedabad         2000.00 

Following command is an example, which would sort the result in descending order by NAME.

SELECT * FROM CUSTOMERS 
   ORDER BY NAME DESC

The above command will produce the following result −

ID  NAME       AGE       ADDRESS            SALARY 
1   Ramesh     32        Ahmedabad          2000.00
7   Muffy      24        Indore             10000.00  
6   Komal      22        MP                 4500.00 
2   Khilan     25        Delhi              1500.00 
3   kaushik    23        Kota               2000.00
5   Hardik     27        Bhopal             8500.00
4   Chaitali   25        Mumbai             6500.00  
