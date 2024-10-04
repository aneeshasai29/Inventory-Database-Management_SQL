/*1. Display Inventory Tag Number and Hardware Details of a Computer Assigned to a Particular Employee
This query retrieves the inventory tag number and detailed hardware specifications for a computer assigned to a specific employee. 
You need to replace 'Employee_Name' with the actual name of the employee.
STEPS: 

SELECT: Specifies the columns to be returned. Here, it includes the inventory tag number, serial number, manufacturer, model, OS version, hardware procurement date, memory size,
hard drive capacity, and display size of the laptops.
FROM: Defines the primary table to select data from, in this case, INVENTORY_LAPTOP.
JOIN: Combines rows from INVENTORY_LAPTOP with those in ASSIGNED_EMPLOYEE_INVENTORY where their Inventory_Tag_Num matches, and similarly combines those results with rows from EMPLOYEE where their Employee_ID matches.
WHERE: Filters the results to include only the entries for an employee named 'John Doe'. This part needs customization to reflect the actual employee's name for whom the data is intended.

*/

SELECT 
    INV.Inventory_Tag_Num,
    INV.Serial_Number,
    INV.Manufacturer,
    INV.Model,
    INV.OS_Version,
    INV.Hardware_Procurement_Date,
    INV.Memory_Size,
    INV.Hard_Drive,
    INV.Display
FROM 
    INVENTORY_LAPTOP INV
JOIN 
    ASSIGNED_EMPLOYEE_INVENTORY AEI ON INV.Inventory_Tag_Num = AEI.Inventory_Tag_Num
JOIN 
    EMPLOYEE EMP ON AEI.Employee_ID = EMP.Employee_ID
WHERE 
    EMP.Employee_Name = 'John Doe'; -- Replace 'John Doe' with the employee's name
    
   /*
   2. List All Software Packages Installed on a Specific Computer
This query lists all software packages installed on a computer identified by its inventory tag number. Replace 101 with the desired inventory tag number.
SELECT: Chooses the software name, version, and vendor to display.
FROM: Starts selection from the SOFTWARE table.
JOIN: Links the SOFTWARE table with SOFTWARE_TRACKER using the Software_Inventory_Number, which ensures that only the software assigned to specific hardware (via software tracker entries) is considered.
WHERE: Focuses the query on a computer with a specific Inventory_Tag_Num, which in this example is 101.
   */
    SELECT 
    SFT.Software_Name,
    SFT.Version,
    SFT.Vendor
FROM 
    SOFTWARE SFT
JOIN 
    SOFTWARE_TRACKER ST ON SFT.Software_Inventory_Number = ST.Software_Inventory_Number
WHERE 
    ST.Inventory_Tag_Num = 101; -- Replace '101' with the specific inventory tag number
    
    /*
    3. Find Out Which Computer Model is the Most Popular
This query determines which computer model is the most popular based on the number of assignments to employees.

SELECT: Selects the computer model and counts the number of occurrences.
FROM: The data is pulled from the INVENTORY_LAPTOP table.
GROUP BY: Aggregates the data by the model of the laptops.
ORDER BY: Arranges the results in descending order based on the count of each model.
LIMIT: Restricts the output to just the most popular model.
    */
    
    SELECT   Model, COUNT(*) AS Total_Count
FROM 
    INVENTORY_LAPTOP
GROUP BY 
    Model
ORDER BY 
    Total_Count DESC
LIMIT 1;



/*
4. List Top 3 Software Packages Installed in the Company
This query identifies the top 3 software packages installed in the company based on the number of installations.

SELECT: Selects the software name and counts the installations.
FROM: Starts from the SOFTWARE table.
JOIN: Links SOFTWARE to SOFTWARE_TRACKER to consider only installed software.
GROUP BY: Groups the results by software name.
ORDER BY: Sorts the software names by the number of installations, in descending order.
LIMIT: Limits the output to the top three software packages.
*/

SELECT 
    SFT.Software_Name,
    COUNT(*) AS Installation_Count
FROM 
    SOFTWARE SFT
JOIN 
    SOFTWARE_TRACKER ST ON SFT.Software_Inventory_Number = ST.Software_Inventory_Number
GROUP BY 
    SFT.Software_Name
ORDER BY 
    Installation_Count DESC
LIMIT 3;

