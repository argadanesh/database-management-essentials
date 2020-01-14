# Week 3 Assignment

## Peer-graded Assignment: Module 4 Assignment

### Basic SELECT Statement Requirements

* List the city, state, and zip codes in the customer table. Your result should not have duplicates. (Hint: The DISTINCT keyword eliminates duplicates.)
* List the name, department, phone number, and email address of employees with a phone number beginning with “3-”.
* List all columns of the resource table with a rate between $10 and $20. Sort the result by rate.
* List the event requests with a status of “Approved” or “Denied” and an authorized date in July 2018. Include the event number, authorization date, and status in the output. (Hint: see the examples in Module 4 for date constants in Oracle and MySQL.)
* List the location number and name of locations that are part of the “Basketball arena”. Your WHERE clause should not have a condition involving the facility number compared to a constant (“F101”). Instead, you should use a condition on the FacName column for the value of “Basketball arena”.
* For each event plan, list the plan number, count of the event plan lines, and sum of the number of resources assigned. For example, plan number “P100” has 4 lines and 7 resources assigned. You only need to consider event plans that have at least one line.
