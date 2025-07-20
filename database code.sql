USE INFO_330_PROJ_01

CREATE TABLE tblMEMBER_TYPE
(MemberTypeID INT IDENTITY(1,1)primary key,
MemberTypeName varchar(50)not null,
MemberTypeDescr varchar(80)not null,
MembershipFee NUMERIC(10,2) not null) 
GO 

select *
from tblPURCHASE_ORDER
CREATE TABLE tblSTORE_TYPE
(StoreTypeID INT IDENTITY(1,1)primary key,
StoreTypeName varchar(50)not null,
StoreTypeDescr varchar(50)not null)
GO 

CREATE TABLE tblMEMBER
(MemberID INT IDENTITY(1,1)primary key,
MemberFname varchar(50)not null,
MemberLname varchar(50)not null,
MemberEmail varchar(80)not null,
MemberDOB DATE not null,
LifetimeOrders NUMERIC(10,2),
LifetimeAmount NUMERIC (10,2),
MemberPhoneNum varchar(20) not null,
MemberTypeID INT null)
GO 

ALTER TABLE tblMEMBER 
ADD CONSTRAINT FK_tblMEMBER_MemberTypeID
FOREIGN KEY (MemberTypeID)
REFERENCES tblMEMBER_TYPE(MemberTypeID)
GO 

INSERT INTO tblMEMBER (MemberFname, MemberLname,MemberEmail, MemberDOB, MemberPhoneNum)
SELECT TOP 2000 CustomerFname, CustomerLname, Email, DateOfBirth, PhoneNum
FROM peeps.dbo.tblCUSTOMER
GO

INSERT INTO tblMEMBER_TYPE (MemberTypeName,MemberTypeDescr,MembershipFee)
VALUES ('Executive','pay more and annual reward','120.00'),('GoldStar','pay less and no annual reward','80.00')
GO 


DELETE FROM tblMEMBER_TYPE
WHERE MemberTypeName = 'GoldStar'
GO

select *
from tblMEMBER

SELECT *
FROM tblPURCHASE_ORDER

SELECT *
FROM tblEMPLOYEE

INSERT INTO tblPURCHASE_ORDER (PurchaseOrderName,TotalAmount,PurchaseDate,EmployeeID, PO_Quantity,PO_ProductPrice)
VALUES ('Coco-Cola', 1200,'April 9, 2021', (SELECT EmployeeID FROM tblEMPLOYEE WHERE EmployeeLname = 'Thierman'),1237,300.00),
('Casper Select 12" Hybrid Medium-Frim Mattress', 1500, 'January 1, 2010', (SELECT EmployeeID FROM tblEMPLOYEE WHERE EmployeeLname = 'Aragao'),1519,450.00),
('Kirkland Signature Daily Multi, 500 Tablets',700, 'May 6, 2013', (SELECT EmployeeID FROM tblEMPLOYEE WHERE EmployeeLname = 'Fevold'),769,236.00),
('Rasberries', 3400, 'October 27, 2017', (SELECT EmployeeID FROM tblEMPLOYEE WHERE EmployeeLname = 'Lerer'),3467,532.00),
('Cheddar Chips', 5700, 'December 3, 2011', (SELECT EmployeeID FROM tblEMPLOYEE WHERE EmployeeLname = 'Zoss'),5799,189.00)
GO 

DELETE FROM tblPURCHASE_ORDER
WHERE PurchaseOrderName = 'Cheddar Chips'
GO

/*
Two (2) stored procedures to populate transactional tables.
Write the SQL code two computed columns leveraging UDFs 
Write the SQL code to create two different complex queries (defined below)
*/

CREATE PROCEDURE getmembertypeid
@MTName varchar(50),
@MTDescr varchar(80),
@MemFee NUMERIC(10,2),
@MemTID INT OUTPUT
AS 
SET @MemTID = (SELECT MemberTypeID
FROM tblMEMBER_TYPE
WHERE MemberTypeName = @MTName
AND MemberTypeDescr = @MTDescr
AND MembershipFee = @MemFee)
GO 

CREATE PROCEDURE getmemberid
@F varchar(30),
@L varchar(30),
@B DATE, 
@MemID INT OUTPUT
AS 
SET @MemID = (SELECT MemberID
FROM tblMEMBER
WHERE MemberFname = @F
AND MemberLname = @L
AND MemberDOB = @B)
GO 


/*
business rule 
-- enforce the following business rule with these conditions 
no member under the age of 21 can purchase alcohol --- 
--- under federal regulations, many of our stores can not sell 
alcohol to underage members --- 
*/

CREATE FUNCTION noalcforteens()
RETURNS INT
AS 
BEGIN 


DECLARE @RET INTEGER = 0 
IF EXISTS (SELECT *
            FROM tblMEMBER M
                JOIN tblSALES_ORDER SO ON M.MemberID = SO.MemberID
                JOIN tblSO_PRODUCT SP ON SO.SalesOrderID = SP.SalesOrderID 
                JOIN tblPRODUCT P ON SP.ProductID = P.ProductID
                JOIN tblPRODUCT_TYPE PT ON P.ProductTypeID = PT.ProductTypeID
            WHERE PT.ProductTypeName = 'Alcohol'
            AND M.MemberDOB > (DATEADD(Year,-21,GETDATE())))
SET @RET = 1
RETURN @RET
END 
GO 
ALTER TABLE tblMEMBER
ADD CONSTRAINT CK_NoYounger21_Alc
CHECK (dbo.noalcforteens() = 0)
/* 
business rule 
-- restrict the following business rule with these conditions 
no GoldStar members can buy a vacation from Costco Travel
-- im making this to show that members who purchase an executive membership have exclusive 
benefits that goldstar members do not have --- 
*/
CREATE FUNCTION olderppltravel()
RETURNS INT
AS 
BEGIN 


DECLARE @RET INTEGER = 0 
IF EXISTS (SELECT *
            FROM tblMEMBER M
                JOIN tblMEMBER_TYPE MT ON M.MemberTypeID = MT.MemberTypeID
                JOIN tblSALES_ORDER SO ON M.MemberID = SO.MemberID
                JOIN tblSO_PRODUCT SP ON SO.SalesOrderID = SP.SalesOrderID 
                JOIN tblPRODUCT P ON SP.ProductID = P.ProductID
                JOIN tblPRODUCT_TYPE PT ON P.ProductTypeID = PT.ProductTypeID
            WHERE PT.ProductTypeName = 'Vacation'
            AND MT.MemberTypeName = 'GoldStar')
SET @RET = 1
RETURN @RET
END
GO
ALTER TABLE tblMEMBER_TYPE
ADD CONSTRAINT CK_NoTravel_GS
CHECK (dbo.olderppltravel() = 0)
/* Write the SQL to determine the Lifetime Amount 
   an Executive member spent in 2019
Now, write the SQL to create a computed column that returns
the TotAmt for previous 5 years.
*/
select *
from tblMEMBER

select *
from tblSALES_ORDER

SELECT *
from tblPURCHASE_ORDER

SELECT M.MemberID, M.MemberFname, M.MemberLname, SUM(M.LifetimeAmount) AS TotalAmt
FROM tblMEMBER M
JOIN tblMEMBER_TYPE MT ON M.MemberTypeID = MT.MemberTypeID 
JOIN tblSALES_ORDER SO ON M.MemberID = SO.MemberID
WHERE SO.OrderDate LIKE '2019'
AND MT.MemberTypeName = 'Executive'
GROUP BY M.MemberID, M.MemberFname, M.MemberLname
HAVING SUM(M.LifetimeAmount) <= 1000

CREATE FUNCTION totalamtexecmembers(@PK INT)
RETURNS NUMERIC(10,2)
AS
BEGIN
DECLARE @RET NUMERIC(10,2) =  (
SELECT SUM(LifetimeAmount) 
FROM tblMEMBER M 
JOIN tblMEMBER_TYPE MT ON M.MemberTypeID = MT.MemberTypeID 
JOIN tblSALES_ORDER SO ON M.MemberID = SO.MemberID
WHERE SO.OrderDate > DateAdd(Year, -5, GetDate())
AND M.MemberID = @PK)
RETURN @RET
END
GO
ALTER TABLE tblMEMBER
ADD TotalAmt AS (dbo.totalamtexecmembers(MemberID))

/*


*/

select *
from tblSALES_ORDER

SELECT M.MemberID, M.MemberFname, M.MemberLname, SUM(M.LifetimeOrders) AS TotalOrdrs
FROM tblMEMBER M
JOIN tblMEMBER_TYPE MT ON M.MemberTypeID = MT.MemberTypeID 
JOIN tblSALES_ORDER SO ON M.MemberID = SO.MemberID
WHERE SO.OrderDate LIKE '2017'
AND MT.MemberTypeName = 'GoldStar'
GROUP BY M.MemberID, M.MemberFname, M.MemberLname
HAVING SUM(M.LifetimeOrders) <= 1000

CREATE FUNCTION totalordrsgdstrmembers(@PK INT)
RETURNS NUMERIC(10,2)
AS
BEGIN
DECLARE @RET NUMERIC(10,2) =  (
SELECT SUM(LifetimeOrders) 
FROM tblMEMBER M 
JOIN tblMEMBER_TYPE MT ON M.MemberTypeID = MT.MemberTypeID 
JOIN tblSALES_ORDER SO ON M.MemberID = SO.MemberID
WHERE SO.OrderDate > DateAdd(Year, -3, GetDate())
AND M.MemberID = @PK)
RETURN @RET
END
GO

/* 
multiple join statements - Determine the goldstar members with L in their first name that bought cheddar chips from the store costco wholesale business in Issaquah
*/


SELECT M.MemberID,M.MemberFname, M.MemberLname
FROM tblMEMBER_TYPE MT
    JOIN tblMEMBER M ON MT.MemberTypeID = M.MemberTypeID
    JOIN tblSALES_ORDER SO ON M.MemberID = SO.MemberID
    JOIN tblSTORE S ON SO.StoreID = S.StoreID
    JOIN tblSO_PRODUCT SOP ON SO.SalesOrderID = SOP.SalesOrderID
WHERE MT.MemberTypeName = 'GoldStar'
AND M.MemberFname LIKE '%L%'
AND SOP.SO_ProductName = 'Cheddar Chips'
AND S.StoreCity = 'Issaquah'
AND S.StoreName = 'Costco Wholesale'
GROUP BY M.MemberID,M.MemberFname, M.MemberLname


/*
aggregate functions - how many members purchased spent at least $50 on items from a Bellevue Store in 2019
*/

SELECT M.MemberID,M.MemberFname, M.MemberLname, SUM(SOP.SO_SalesTotal) AS Amt
FROM tblMEMBER_TYPE MT
    JOIN tblMEMBER M ON MT.MemberTypeID = M.MemberTypeID
    JOIN tblSALES_ORDER SO ON M.MemberID = SO.MemberID
    JOIN tblSTORE S ON SO.StoreID = S.StoreID
    JOIN tblSO_PRODUCT SOP ON SO.SalesOrderID = SOP.SalesOrderID
WHERE SO.OrderDate LIKE '2019'
AND S.StoreCity = 'Bellevue'
GROUP BY M.MemberID,M.MemberFname, M.MemberLname
HAVING SUM(SOP.SO_SalesTotal) >= 50