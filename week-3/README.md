# Week 3 Assignment

## Practice Problem: Module 4
The problems use the intercollegiate athletics database. The course website also contains Oracle and MySQL CREATE TABLE statements as well as INSERT statements.

* List the customer number, the name, the phone number, and the city of customers.
* List the customer number, the name, the phone number, and the city of customers who reside in Colorado (State is CO).
* List all columns of the EventRequest table for events costing more than $4000.  Order the result by the event date (DateHeld).
* List the event number, the event date (DateHeld), and the estimated audience number with approved status and audience greater than 9000 or with pending status and audience greater than 7000.
* List the event number, event date (DateHeld), customer number and customer name of events placed in January 2018 by customers from Boulder.
* List the average number of resources used (NumberFld) by plan number. Include only location number L100.
* List the average number of resources used (NumberFld) by plan number. Only include location number L100. Eliminate plans with less than two event lines containing location number L100.

## Peer-graded Assignment: Module 4 Assignment

### Basic SELECT Statement Requirements

* List the city, state, and zip codes in the customer table. Your result should not have duplicates. (Hint: The DISTINCT keyword eliminates duplicates.)
* List the name, department, phone number, and email address of employees with a phone number beginning with “3-”.
* List all columns of the resource table with a rate between $10 and $20. Sort the result by rate.
* List the event requests with a status of “Approved” or “Denied” and an authorized date in July 2018. Include the event number, authorization date, and status in the output. (Hint: see the examples in Module 4 for date constants in Oracle and MySQL.)
* List the location number and name of locations that are part of the “Basketball arena”. Your WHERE clause should not have a condition involving the facility number compared to a constant (“F101”). Instead, you should use a condition on the FacName column for the value of “Basketball arena”.
* For each event plan, list the plan number, count of the event plan lines, and sum of the number of resources assigned. For example, plan number “P100” has 4 lines and 7 resources assigned. You only need to consider event plans that have at least one line.
