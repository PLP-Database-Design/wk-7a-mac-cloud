# Question 1 Achieving 1NF (First Normal Form)

SELECT OrderID, CustomerName, TRIM(product) AS Product
FROM ProductDetail
CROSS APPLY STRING_SPLIT(Products, ',');
OrderID	CustomerName	    Product
101	     John Doe	         Laptop
101	    John Doe	         Mouse
102	    Jane Smith	       Tablet
102	    Jane Smith	       Keyboard
102	    Jane Smith	       Mouse
103	    Emily Clark	       Phone


# Question 2 Achieving 2NF (Second Normal Form) 

Orders Table:

OrderID	  CustomerName
101	      John Doe
102	      Jane Smith
103	     Emily Clark

  
OrderDetails Table:

OrderID	  Product	   Quantity
101	      Laptop	     2
101	      Mouse	       1
102	      Tablet	     3
102	      Keyboard	   1
102	      Mouse	       2
103	      Phone      	 1
