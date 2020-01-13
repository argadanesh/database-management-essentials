# Peer-graded Assignment: Module 3 Assignment

The graded problems in Module 3 provide experience with the CREATE TABLE statements.  You can use Oracle or MySQL for this assignment. This assignment extends the practice problems by adding 5 more tables. Thus, only 5 CREATE TABLE statements need to be submitted. Access to Oracle or MySQL servers is required for the execution. You should be familiar with basic CREATE TABLE keywords and constraints.

## Overview
You will write basic CREATE TABLE statements, modify them with constraints, and execute the statements to create all of the tables. You will use provided INSERT statements to populate all tables. This assignment uses intercollegiate athletic database and builds on what you have already created in the practice problems. To complete the assignment, you will produce a total of 5 CREATE TABLE statements and a screen snapshot as an evidence of execution of each of these statements.

## Assignment Details
The graded problems in Module 3 provide experience with the CREATE TABLE statement.  You should execute the statements using either Oracle or MySQL.

To facilitate grading, please number the SQL statements and format them neatly. You need to show the result tables. Indicate in the beginning of your document if you used Oracle or MySQL.

If you use Oracle, you will need to use the Oracle SQL Developer to connect to an Oracle server. If you use MySQL, you will need to use the MySQL Workbench to connect to a MySQL server.

### 1. Basic CREATE TABLE Statement Requirements
You should use the table descriptions in the Intercollegiate Database background document. You must use the same table and column names as specified in the background document. Here is some advice about data type selections.

  1. You should use standard SQL data types specified in the notes except for using VARCHAR2 (an Oracle data type) instead of VARCHAR for columns containing varying length character strings. For MySQL, you should use VARCHAR for variable length strings.
  
  2. For primary key fields (CustNo, LocNo, EventNo, PlanNo, EmpNo, ResNo, and FacNo), use the VARCHAR (or VARCHAR2 in Oracle) data type with length 8.  For consistency, corresponding foreign keys (such as EventRequest.CustNo) should also be the same data type and length.
  
  3. For Oracle, you should use the DATE data type for the columns involving dates or times. The EventPlanLine.TimeStart and EventPlanLine.TimeEnd columns will store both date and time data so you should use the DATE data type. In MySQL use the DATE data type for columns with just date details (date columns in the EventRequest and EventPlan tables) and DATETIME for columns with date and time details (time columns in the EventPlanLine table).
  
  4. Use CHAR(1) for the Customer.Internal column as Oracle does not provide a BOOLEAN data type.  MySQL has the Boolean data type, but I suggest that you use CHAR(1) instead.
  
 ### 2. Constraints
After writing the basic CREATE TABLE statements, you should modify the statements with constraints. The CONSTRAINT clauses can be either inline in a column definition or separate after column definitions except where noted. You should specify a meaningful name for each CONSTRAINT clause.

  * For each primary key, you should specify a PRIMARY KEY constraint clause. For single column primary keys (CustNo, LocNo, EventNo, PlanNo, EmpNo, ResNo, and FacNo), the constraint clause can be inline or external. For multiple column primary keys (combination of PlanNo and LineNo), the CONSTRAINT clause must be external.
  
  * For each foreign key, you should specify a FOREIGN KEY constraint clause. The constraint clauses can be inline or separate.
  
  * Define NOT NULL constraints for all columns except eventplan.empno, EventRequest.DateAuth, EventRequest.BudNo, and EventPlan.Notes.  Make sure that you define NOT NULL constraints for the PK of each table. Because of MySQL syntax limitations for NOT NULL constraints (inline with no constraint name and no CONSTRAINT keyword), you should define inline NOT NULL constraints.
  
  * Define a named CHECK constraint to restrict the eventrequest.status column to have a value of “Pending”, “Denied”, or “Approved”. You can use the IN operator in this constraint. In MySQL, the syntax does not allow the CONSTRAINT keyword and a constraint name for CHECK constraints. You should use the CHECK keyword followed the condition enclosed in parentheses.
  
  * Define named CHECK constraints to ensure that the resource.rate and eventrequest.estaudience are greater than 0. In MySQL, you cannot use a constraint name and the CONSTRAINT keyword for CHECK constraints. In MySQL, the syntax does not allow the CONSTRAINT keyword and a constraint name for CHECK constraints. You should use the CHECK keyword followed the condition enclosed in parentheses.
  
  * Define a named CHECK constraint involving EventPlanLine.TimeStart and EventPlanLineTimeEnd. The start time should be smaller (chronologically before) than the end time. This CHECK constraint must be external because it involves two columns. In MySQL, the syntax does not allow the CONSTRAINT keyword and a constraint name for CHECK constraints. You should use the CHECK keyword followed the condition enclosed in parentheses.

