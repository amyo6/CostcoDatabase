{\rtf1\ansi\ansicpg1252\cocoartf2636
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fmodern\fcharset0 CourierNewPSMT;\f1\fswiss\fcharset0 ArialMT;\f2\froman\fcharset0 TimesNewRomanPSMT;
\f3\fmodern\fcharset0 CourierNewPS-BoldMT;\f4\fmodern\fcharset0 CourierNewPS-ItalicMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue255;\red255\green255\blue254;\red25\green25\blue25;
\red0\green0\blue0;\red101\green76\blue29;\red19\green120\blue72;\red15\green112\blue1;\red59\green81\blue185;
\red242\green242\blue242;\red38\green38\blue38;\red152\green37\blue37;\red101\green40\blue139;\red137\green74\blue30;
\red154\green154\blue154;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c100000;\cssrgb\c100000\c100000\c99608;\cssrgb\c12941\c12941\c12941;
\cssrgb\c0\c0\c0;\cssrgb\c47451\c36863\c14902;\cssrgb\c3529\c53333\c35294;\cssrgb\c0\c50196\c0;\cssrgb\c29412\c41176\c77647;
\cssrgb\c96078\c96078\c96078;\cssrgb\c20000\c20000\c20000;\cssrgb\c66667\c21569\c19216;\cssrgb\c47843\c24314\c61569;\cssrgb\c61176\c36471\c15294;
\cssrgb\c66667\c66667\c66667;}
\margl1440\margr1440\vieww28600\viewh15420\viewkind0
\deftab720
\pard\pardeftab720\sl480\partightenfactor0

\f0\fs32 \cf2 \cb3 \expnd0\expndtw0\kerning0
CREATE DATABASE \cf4 INFO_330_PROJ_01
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 USE\cf4  INFO_330_PROJ_01
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 GO
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 CREATE\cf4  \cf2 TABLE\cf4  \cf6 tblMEMBER_TYPE
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 (MemberTypeID \cf2 INT\cf4  \cf6 IDENTITY\cf4 (\cf7 1\cf4 ,\cf7 1\cf4 )\cf2 primary key\cf4 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 MemberTypeName \cf2 varchar\cf4 (\cf7 50\cf4 )\cf2 not null\cf4 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 MemberTypeDescr \cf2 varchar\cf4 (\cf7 80\cf4 )\cf2 not null\cf4 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 MembershipFee \cf2 NUMERIC\cf4 (\cf7 10\cf4 ,\cf7 2\cf4 )\cf2 not null\cf4 )
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 GO
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 CREATE\cf4  \cf2 TABLE\cf4  \cf6 tblSTORE_TYPE
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 (StoreTypeID \cf2 INT\cf4  \cf6 IDENTITY\cf4 (\cf7 1\cf4 ,\cf7 1\cf4 )\cf2 primary key\cf4 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 StoreTypeName \cf2 varchar\cf4 (\cf7 50\cf4 )\cf2 not null\cf4 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 StoreTypeDescr \cf2 varchar\cf4 (\cf7 50\cf4 )\cf2 not null\cf4 )
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 GO
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 \'a0
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 CREATE\cf4  \cf2 TABLE\cf4  \cf6 tblMEMBER
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 (MemberID \cf2 INT\cf4  \cf6 IDENTITY\cf4 (\cf7 1\cf4 ,\cf7 1\cf4 )\cf2 primary key\cf4 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 MemberFname \cf2 varchar\cf4 (\cf7 50\cf4 )\cf2 not null\cf4 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 MemberLname \cf2 varchar\cf4 (\cf7 50\cf4 )\cf2 not null\cf4 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 MemberEmail \cf2 varchar\cf4 (\cf7 80\cf4 )\cf2 not null\cf4 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 LifetimeOrders \cf2 NUMERIC\cf4 (\cf7 10\cf4 ,\cf7 2\cf4 ),
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 LifetimeAmount \cf2 NUMERIC\cf4  (\cf7 10\cf4 ,\cf7 2\cf4 ),
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 MemberPhoneNum \cf2 varchar\cf4 (\cf7 20\cf4 ) \cf2 not null\cf4 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 MemberTypeID \cf2 INT\cf4  \cf2 not null\cf4 )
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 GO
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 \'a0
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 ALTER\cf4  \cf2 TABLE\cf4  tblMEMBER
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 ADD\cf4  \cf2 CONSTRAINT\cf4  FK_tblMEMBER_MemberTypeID
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 FOREIGN KEY\cf4  (MemberTypeID)
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 REFERENCES\cf4  tblMEMBER_TYPE(MemberTypeID)
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 GO
\f1\fs29\fsmilli14667 \cf5 \
\pard\pardeftab720\sl368\partightenfactor0

\f2\fs32 \cf5 \cb1 \'a0
\f1\fs29\fsmilli14667 \

\f2\fs32 \'a0
\f1\fs29\fsmilli14667 \
\pard\pardeftab720\sl480\partightenfactor0

\f0\fs32 \cf8 \cb3 -- Create Table for tblPRODUCT_TYPE
\f1\fs29\fsmilli14667 \cf5 \
\pard\pardeftab720\sl480\partightenfactor0

\f0\fs32 \cf2 CREATE\cf4  \cf2 TABLE\cf4  \cf6 tblPRODUCT_TYPE
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 (ProductTypeID \cf2 INT\cf4  \cf6 IDENTITY\cf4 (\cf7 1\cf4 ,\cf7 1\cf4 ) \cf2 PRIMARY KEY\cf4 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 ProductTypeName \cf2 VARCHAR\cf4 (\cf7 50\cf4 ) \cf2 NOT NULL\cf4 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 ProductTypeDescr \cf2 VARCHAR\cf4 (\cf7 150\cf4 ) \cf2 NULL\cf4 )
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 GO
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 \'a0
\f1\fs29\fsmilli14667 \cf5 \
\pard\pardeftab720\sl480\partightenfactor0

\f0\fs32 \cf8 -- Create Table for tblPO_PRODUCT
\f1\fs29\fsmilli14667 \cf5 \
\pard\pardeftab720\sl480\partightenfactor0

\f0\fs32 \cf2 CREATE\cf4  \cf2 TABLE\cf4  \cf6 tblPO_PRODUCT
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 (PO_ProdID \cf2 INT\cf4  \cf6 IDENTITY\cf4 (\cf7 1\cf4 ,\cf7 1\cf4 ) \cf2 PRIMARY KEY\cf4 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 PO_ProductName \cf2 VARCHAR\cf4 (\cf7 50\cf4 ) \cf2 NOT NULL\cf4 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 PO_ProductPrice \cf2 NUMERIC\cf4  (\cf7 10\cf4 ,\cf7 2\cf4 ) \cf2 NOT NULL\cf4 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 Quantity \cf2 INT\cf4  \cf2 NOT NULL\cf4 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 )
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 GO
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 \'a0
\f1\fs29\fsmilli14667 \cf5 \
\pard\pardeftab720\sl480\partightenfactor0

\f0\fs32 \cf8 -- Create Table for tblPURCHASE_ORDER
\f1\fs29\fsmilli14667 \cf5 \
\pard\pardeftab720\sl480\partightenfactor0

\f0\fs32 \cf2 CREATE\cf4  \cf2 TABLE\cf4  \cf6 tblPURCHASE_ORDER
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 (PurchaseOrderID \cf2 INT\cf4  \cf6 IDENTITY\cf4 (\cf7 1\cf4 ,\cf7 1\cf4 ) \cf2 PRIMARY KEY\cf4 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 PurchaseOrderName \cf2 VARCHAR\cf4 (\cf7 150\cf4 ) \cf2 NOT NULl\cf4 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 TotalAmount \cf2 NUMERIC\cf4  (\cf7 10\cf4 ,\cf7 2\cf4 ) \cf2 NOT NULL\cf4 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 PurchaseDate \cf2 DATE\cf4  \cf2 NOT NULL\cf4 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 )
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 GO
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 \'a0
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 ALTER\cf4  \cf2 TABLE\cf4  tblPO_PRODUCT
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 ADD\cf4  \cf2 CONSTRAINT\cf4  FK_PO_PRODUCT_PurchaseOrderID
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 FOREIGN KEY\cf4  (PurchaseOrderID)
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 REFERENCES\cf4  tblPO_PRODUCT(PurchaseOrderID)
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 GO
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 \'a0
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 ALTER\cf4  \cf2 TABLE\cf4  tblPO_PRODUCT
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 ADD\cf4  \cf2 CONSTRAINT\cf4  FK_PO_PRODUCT_ProductID
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 FOREIGN KEY\cf4  (ProductID)
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 REFERENCES\cf4  tblPO_PRODUCT(ProductID)
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 GO
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf4 \'a0
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 ALTER\cf4  \cf2 TABLE\cf4  tblPURCHASE_ORDER
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 ADD\cf4  \cf2 CONSTRAINT\cf4  FK_PURCHASE_ORDER_EmployeeeID
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 FOREIGN KEY\cf4  (EmployeeID)
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 REFERENCES\cf4  tblPURCHASE_ORDER(EmployeeID)
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 GO
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf2 \'a0
\f1\fs29\fsmilli14667 \cf5 \
\pard\pardeftab720\sl480\partightenfactor0

\f0\fs32 \cf9 \cb10 CREATE\cf11  \cf9 TABLE\cf11  
\f3\b \cf12 tblSUPPLIER
\f1\b0\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 (SupplierID \cf13 INTEGER\cf11  
\f3\b \cf12 IDENTITY
\f0\b0 \cf11  (\cf14 1\cf11 ,\cf14 1\cf11 ) \cf9 primary key\cf11 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 SupplierName \cf13 varchar\cf11 (\cf14 50\cf11 ) \cf9 not null\cf11 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 SupplierEmail \cf13 varchar\cf11 (\cf14 50\cf11 ) \cf9 not null\cf11 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 SupplierPhoneNum \cf13 varchar\cf11 (\cf14 50\cf11 ) \cf9 not null\cf11 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 AverageLeadOrders \cf13 varchar\cf11 (\cf14 50\cf11 ) \cf9 not null\cf11 )
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 GO
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 \'a0
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 CREATE\cf11  \cf9 TABLE\cf11  
\f3\b \cf12 tblPRODUCT
\f1\b0\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 (ProductID \cf13 INTEGER\cf11  
\f3\b \cf12 IDENTITY
\f0\b0 \cf11  (\cf14 1\cf11 ,\cf14 1\cf11 ) \cf9 primary key\cf11 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 ProductName \cf13 varchar\cf11 (\cf14 50\cf11 ) \cf9 not null\cf11 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 ProductPrice \cf13 Numeric\cf11 (\cf14 7\cf11 ,\cf14 2\cf11 ),
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 ProductTypeID \cf13 INT\cf11  \cf9 not null\cf11 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 SupplierID \cf13 INT\cf11  \cf9 not null\cf11 )
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 GO
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 \'a0
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 CREATE\cf11  \cf9 TABLE\cf11  
\f3\b \cf12 tblSO_PRODUCT
\f1\b0\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 (SO_ProdID \cf13 INTEGER\cf11  
\f3\b \cf12 IDENTITY
\f0\b0 \cf11  (\cf14 1\cf11 ,\cf14 1\cf11 ) \cf9 primary key\cf11 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 SO_ProductName \cf13 varchar\cf11 (\cf14 50\cf11 ) \cf9 not null\cf11 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 SO_ProductPrice \cf13 Numeric\cf11 (\cf14 7\cf11 ,\cf14 2\cf11 ),
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 SalesOrderID \cf13 INT\cf11  \cf9 not null\cf11 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 ProductID \cf13 INT\cf11  \cf9 not null\cf11 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 SO_Quantity \cf13 INT\cf11  \cf9 not null\cf11 )
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 GO
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 \'a0
\f1\fs29\fsmilli14667 \cf5 \
\pard\pardeftab720\sl480\partightenfactor0

\f4\i\fs32 \cf15 -- add foreign key to the tables
\f1\i0\fs29\fsmilli14667 \cf5 \
\pard\pardeftab720\sl480\partightenfactor0

\f0\fs32 \cf11 \'a0
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 ALTER\cf11  \cf9 TABLE\cf11  tblPRODUCT
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 ADD\cf11  \cf9 CONSTRAINT\cf11  FK_tblPRODUCT_ProductTypeID
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 FOREIGN KEY\cf11  (ProductTypeID)
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 REFERENCES\cf11  tblPRODUCT_TYPE (ProductTypeID)
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 GO
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 \'a0
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 ALTER\cf11  \cf9 TABLE\cf11  tblPRODUCT
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 ADD\cf11  \cf9 CONSTRAINT\cf11  FK_tblPRODUCT_SupplierID
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 FOREIGN KEY\cf11  (SupplierID)
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 REFERENCES\cf11  tblSUPPLIER (SupplierID)
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 GO
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 \'a0
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 ALTER\cf11  \cf9 TABLE\cf11  tblSO_PRODUCT
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 ADD\cf11  \cf9 CONSTRAINT\cf11  FK_tblSO_PRODUCT_SalesOrderID
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 FOREIGN KEY\cf11  (SalesOrderID)
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 REFERENCES\cf11  tblSALES_ORDER (SalesOrderID)
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 GO
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 \'a0
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 ALTER\cf11  \cf9 TABLE\cf11  tblSO_PRODUCT
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 ADD\cf11  \cf9 CONSTRAINT\cf11  FK_tblSO_PRODUCT_ProductID
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 FOREIGN KEY\cf11  (ProductID)
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 REFERENCES\cf11  tblPRODUCT (ProductID)
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 GO
\f1\fs29\fsmilli14667 \cf5 \
\pard\pardeftab720\sl480\partightenfactor0

\f0\fs32 \cf8 \cb3 \'a0
\f1\fs29\fsmilli14667 \cf5 \
\pard\pardeftab720\sl438\partightenfactor0

\f0\fs32 \cf9 \cb10 USE\cf11  INFO_330_PROJ_01
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 CREATE\cf11  \cf9 TABLE\cf11  
\f3\b \cf12 tblEMPLOYEE
\f1\b0\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 (EmployeeID \cf13 INTEGER\cf11  
\f3\b \cf12 IDENTITY
\f0\b0 \cf11 (\cf14 1\cf11 ,\cf14 1\cf11 ) \cf9 primary key\cf11 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 EmployeeFname \cf13 varchar\cf11 (\cf14 30\cf11 ) \cf9 not null\cf11 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 EmployeeLname \cf13 varchar\cf11 (\cf14 30\cf11 ) \cf9 not null\cf11 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 EmployeeEmail \cf13 varchar\cf11 (\cf14 60\cf11 ) \cf9 not null\cf11 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 EmployeePhoneNum \cf13 varchar\cf11 (\cf14 20\cf11 ) \cf9 not null\cf11 )
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 GO
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 \'a0
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 GO
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 CREATE\cf11  \cf9 TABLE\cf11  
\f3\b \cf12 tblSTORE
\f1\b0\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 (StoreID \cf13 INTEGER\cf11  
\f3\b \cf12 IDENTITY
\f0\b0 \cf11 (\cf14 1\cf11 ,\cf14 1\cf11 ) \cf9 primary key\cf11 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 StoreName \cf13 varchar\cf11 (\cf14 30\cf11 ) \cf9 not null\cf11 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 StoreTypeID \cf13 INT\cf11  \cf9 not null\cf11 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 YearOpened \cf13 Int\cf11  \cf9 not null\cf11 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 StoreCity \cf13 varchar\cf11 (\cf14 80\cf11 ) \cf9 not null\cf11 )
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 GO
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 \'a0
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 \'a0
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 GO
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 CREATE\cf11  \cf9 TABLE\cf11  
\f3\b \cf12 tblSALES_ORDER
\f1\b0\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 (SalesOrderID \cf13 INTEGER\cf11  
\f3\b \cf12 IDENTITY
\f0\b0 \cf11 (\cf14 1\cf11 ,\cf14 1\cf11 ) \cf9 primary key\cf11 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 MemberID \cf13 INT\cf11  \cf9 not null\cf11 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 OrderDate \cf13 DATE\cf11  \cf9 not null\cf11 ,
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 TotalPrice \cf13 Numeric\cf11 (\cf14 8\cf11 ,\cf14 2\cf11 ) \cf9 not null\cf11  
\f4\i \cf15 -- quantity * price
\f1\i0\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 )
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 GO
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 \'a0
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 ALTER\cf11  \cf9 TABLE\cf11  tblSALES_ORDER
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 ADD\cf11  \cf9 CONSTRAINT\cf11  FK_tblMEMBER_MemberID
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 FOREIGN KEY\cf11  (MemberID)
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 REFERENCES\cf11  tblSALES_ORDER (MemberID)
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 GO
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 \'a0
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 ALTER\cf11  \cf9 TABLE\cf11  tblSTORE
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 ADD\cf11  \cf9 CONSTRAINT\cf11  FK_tblSTORE_TYPE_StoreTypeID
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 FOREIGN KEY\cf11  (StoreTypeID)
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 REFERENCES\cf11  tblSTORE (StoreTypeID)
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf9 GO
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 \'a0
\f1\fs29\fsmilli14667 \cf5 \

\f0\fs32 \cf11 \'a0
\f1\fs29\fsmilli14667 \cf5 \
}