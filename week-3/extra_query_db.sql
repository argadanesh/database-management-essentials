/*List the customer number, the name (first and last), and the balance of customers.*/
SELECT CustNo, CustFirstName, CustLastName, CustBal
  FROM Customer;

/*List the customer number, the name (first and last), and the balance of customers who reside in Colorado (CustState is CO).*/
SELECT CustNo, CustFirstName, CustLastName, CustBal
  FROM Customer
  WHERE CustState = 'CO';

/*List all columns of the Product table for products costing more than $50.  Order the result by product manufacturer (ProdMfg) and product name.*/
SELECT *
  FROM Product
  WHERE ProdPrice > 50
  ORDER BY ProdMfg, ProdName;

/*List the customer number, the name (first and last), the city, and the balance of customers who reside in Denver with a balance greater than $150 or who reside in Seattle with a balance greater than $300.*/
SELECT CustNo, CustFirstName, CustLastName, CustCity, CustBal
  FROM Customer
  WHERE (CustCity = 'Denver' AND CustBal > 150) 
           OR (CustCity = 'Seattle' AND CustBal > 300);

/*List the order number, order date, customer number, and customer name (first and last) of orders placed in January 2017 sent to Colorado recipients.*/
SELECT OrdNo, OrdDate, Customer.CustNo, CustFirstName, CustLastName
  FROM OrderTbl, Customer
  WHERE OrdState = 'CO' AND OrdDate BETWEEN '1-Jan-2017' AND '31-Jan-2017'
        AND OrderTbl.CustNo = Customer.CustNo;

SELECT OrdNo, OrdDate, Customer.CustNo, CustFirstName, CustLastName
  FROM OrderTbl INNER JOIN Customer ON OrderTbl.CustNo = Customer.CustNo
  WHERE OrdState = 'CO' AND OrdDate BETWEEN '1-Jan-2017' AND '31-Jan-2017';

/*List the average balance of customers by city. Include only customers residing in Washington state (WA).*/
SELECT CustCity, AVG(CustBal) AS AvgBal
  FROM Customer
  WHERE CustState = 'WA'
  GROUP BY CustCity;

/*List the average balance and number of customers by city. Only include customers residing in Washington State (WA).  Eliminate cities in the result with less than two customers.*/
SELECT CustCity, AVG(CustBal) AS AvgBal, COUNT(*) AS NumCustomers
  FROM Customer
  WHERE CustState = 'WA'
  GROUP BY CustCity
  HAVING COUNT(*) > 1;