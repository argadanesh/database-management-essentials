/*List the customer number, the name, the phone number, and the city of customers.*/
SELECT
    C.CUSTNO AS CUSTOMER_NUMBER,
    C.CUSTNAME AS CUSTOMER_NAME,
    C.PHONE AS PHONE_NUMBER,
    C.CITY AS CITY
FROM
    CUSTOMER C;

/*List the customer number, the name, the phone number, and 
 the city of customers who reside in Colorado (State is CO).*/
SELECT
    C.CUSTNO AS CUSTOMER_NUMBER,
    C.CUSTNAME AS CUSTOMER_NAME,
    C.PHONE AS PHONE_NUMBER,
    C.CITY AS CITY
FROM
    CUSTOMER C
WHERE 
    C.STATE = 'CO';
 
/*List all columns of the EventRequest table for events costing more than $4000.  
 Order the result by the event date (DateHeld).*/
SELECT 
    * 
FROM 
    EVENTREQUEST
WHERE
    ESTCOST > 4000
ORDER BY 
    DATEHELD;

/*List the event number, the event date (DateHeld), 
 and the estimated audience number with approved status and audience greater than 9000
 or with pending status and audience greater than 7000.*/
SELECT 
    EVENTNO AS EVENT_NUMBER,
    DATEHELD AS EVENT_DATE,
    ESTAUDIENCE AS ESTIMATED_AUDIENCE
FROM 
    EVENTREQUEST
WHERE
    (STATUS='Approved' AND ESTAUDIENCE > 9000)
    OR
    (STATUS='Pending' AND ESTAUDIENCE > 7000);

/*List the event number, event date (DateHeld), customer number and 
 customer name of events placed in January 2018 by customers from Boulder.*/
SELECT
    E.EVENTNO AS EVENT_NUMBER,
    E.DATEHELD AS EVENT_DATE,
    C.CUSTNO AS CUSTOMER_NUMBER,
    C.CUSTNAME AS CUSTOMER_NAME
FROM 
    EVENTREQUEST E
INNER JOIN
    CUSTOMER C
ON 
    E.CUSTNO = C.CUSTNO
WHERE 
    TO_CHAR(E.DATEHELD, 'YYYY') = '2018'
AND
    TO_CHAR(E.DATEHELD,'MM') = '01'
AND
    C.CITY = 'Boulder';


/*List the average number of resources used (NumberFld) by plan number. 
 Include only location number L100.*/
SELECT 
    PLANNO,
    AVG(NUMBERFLD) AS AVG_NUM_RESOURCES
FROM
    EVENTPLANLINE
WHERE 
    LOCNO = 'L100'
GROUP BY PLANNO;



/*List the average number of resources used (NumberFld) by plan number. 
 Only include location number L100. Eliminate plans with less than two event lines containing location number L100.*/
SELECT 
    PLANNO,
    AVG(NUMBERFLD) AS AVG_NUM_RESOURCES,
    COUNT(*) AS NUM_EVENT_LINES
FROM
    EVENTPLANLINE
WHERE 
    LOCNO = 'L100'
GROUP BY 
    PLANNO
HAVING
    COUNT(*) > 1
    
