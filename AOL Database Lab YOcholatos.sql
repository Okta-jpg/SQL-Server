CREATE DATABASE YOcholatos
USE YOcholatos

CREATE TABLE MsStaff (
StaffID Varchar(5) Primary Key Check (StaffID Like 'ST[0-9][0-9][0-9]') Not Null,
StaffName Varchar(255) Not Null,
StaffGender Varchar(255) Check (StaffGender in ('Male', 'Female')) Not Null,
StaffAddress Varchar(255) Check (StaffAddress Like '% Street') Not Null,
StaffSalary Varchar(255) Check (StaffSalary >= 4000000 and StaffSalary <= 6000000) Not Null,
StaffPhoneNumber Char(15) Not Null,
StaffDOB Date Not Null
)

INSERT INTO MsStaff VALUES
('ST001', 'Baskara Mustang', 'Male', '440 Bawah Street', 4400000, '082144578821', '1994-04-04'),
('ST002', 'Terne Beleric', 'Male', 'Hj. Udin Street', 4500000, '08841258236', '1998-03-20'),
('ST003', 'Kenjiro Tan Halim', 'Male', 'Jelambar 5 Street', 4200000, '081753952745', '1999-10-07'),
('ST004', 'Cinta Yuralim', 'Female', 'Hj. Yasin Street', 6000000, '082152963754', '1999-08-11'),
('ST005', 'Yayan Bene', 'Male', 'Gede Pondok Street', 4100000, '087889845878', '2000-01-10'),
('ST006', 'Joni Ararya', 'Male', '555 Atas Street', 5500000, '087858963969', '1995-05-05'),
('ST007', 'Freya Araki', 'Female', 'Cikucing Street', 4400000, '082111525865', '1998-07-20'),
('ST008', 'Eimi Jiraya', 'Female', 'Ciatas Street', 5000000, '082174578862', '1999-08-13'),
('ST009', 'Riyadi Fukada', 'Male', 'Cibawah Street', 5700000, '087785856236', '1997-09-01'),
('ST010', 'Renjiro Wijaya', 'Male', '699 Street', 6000000, '087852963741', '1999-02-22'),
('ST011', 'Matius Masaya', 'Male', 'Cibanjir Street', 5200000, '082152556747', '1997-07-07'),
('ST012', 'Denise Darius', 'Female', 'Sulaiman Street', 5800000, '08584965856', '1998-01-03'),
('ST013', 'Daniel Markus', 'Male', '667 Main Street', 6000000, '087884756657', '1999-05-15')


CREATE TABLE MsChocolate (
ChocolateID Varchar(5) Primary Key Check (ChocolateID Like 'CO[0-9][0-9][0-9]') Not Null,
ChocolateTypeName Varchar(255) Not Null,
ChocolateName Varchar(255) Not Null,
ChocolateStock Char(15) Not Null,
ChocolatePrice Char(15) Not Null
)

INSERT INTO MsChocolate VALUES
('CO001', 'Dark Forest Choco', 'Crunchy Forest Delight', 100, 25000),
('CO002', 'Golden Choco', 'Golden Dream Milk Bliss', 175, 50000),
('CO003', 'Peanut Choco', 'Velvet Peanut Indulgence', 150, 25000),
('CO004', 'Mix', 'Whimsical Mix Surprise', 120, 60000),
('CO005', 'Almond', 'Toasted Almond Fantasy', 180, 30000),
('CO006', 'Dark Choco', 'Midnight Dark Symphony', 150, 45000),
('CO007', 'White Choco', 'Blissful White Cloud', 105, 40000),
('CO008', 'Crunchy', 'Crunchy Nut Nirvana', 120, 25000),
('CO009', 'Cookies and Cream', 'Milk Choco Cookies', 160, 30000),
('CO010', 'Cookies and Cream', 'Yin Yang', 90, 30000),
('CO011', 'Peanut Choco', 'Waku-Waku', 155, 50000),
('CO012', 'Milk Choco', 'Santas Gift', 60, 45000),
('CO013', 'Dark Choco', 'Medusa Curse', 95, 30000),
('CO014', 'Golden Choco', 'Midas Touch', 100, 35000)


CREATE TABLE MsChocolateType (
ChocolateTypeID Varchar(5) Primary Key Check (ChocolateTypeID Like 'CT[0-9][0-9][0-9]') Not Null,
ChocolateTypeName Varchar(255) Not Null
)

INSERT INTO MsChocolateType VALUES
('CT001', 'Crunchy'),
('CT002', 'Milk Choco'),
('CT003', 'Dark Choco'),
('CT004', 'White Choco'),
('CT005', 'Almond'),
('CT006', 'Dark Forest Choco'),
('CT007', 'Golden Choco'),
('CT008', 'Peanut Choco'),
('CT009', 'Mix'),
('CT010', 'Cookies and Cream')


CREATE TABLE MsCustomer (
CustomerID Varchar(5) Primary Key Check (CustomerID Like 'CU[0-9][0-9][0-9]') Not Null,
CustomerName Varchar(255) Not Null,
CustomerGender Varchar(255) Check (CustomerGender in ('Male', 'Female')) Not Null,
CustomerDOB Date Not Null,
CustomerAddress Varchar(255) Check (CustomerAddress Like '% Street') Not Null,
CustomerPhoneNumber Char(15) Not Null
)

INSERT INTO MsCustomer VALUES
('CU001', 'Bramisius Cornelius', 'Male', '2001-07-20', 'Puri Mutiara Street', '087884321147'),
('CU002', 'Valerie May', 'Female', '2002-02-22', 'Dewa Barata Street', '087847748156'),
('CU003', 'Adinda Ayu', 'Female', '1985-07-02', 'Menteng II Street', '082145865985'),
('CU004', 'Sarah Avira', 'Female', '2004-08-19', 'Bendungan Hilir IV Street', '087963524123'),
('CU005', 'Clarinta Julianne', 'Female', '2002-07-17', 'Bendungan Hilir II Street', '082174156894'),
('CU006', 'Nelson Halim Wibowo', 'Male', '1998-09-11', 'Jelambar I Street', '08218696524'),
('CU007', 'Azizah Audrey', 'Female', '1997-02-10', 'St. Senen Street', '087425689468'),
('CU008', 'Rachman Rahim', 'Male', '2004-08-17', 'Pasar Sabtu Street', '082174356891'),
('CU009', 'Amanda Aliwarga', 'Female', '2004-05-09', 'St. Senen II Street', '085471569584'),
('CU010', 'Stefani Pangabean', 'Female', '1999-11-20', 'Puri Mutiara II Street', '087151629841')


CREATE TABLE MsVendor (
VendorID Varchar(5) Primary Key Check (VendorID Like 'VE[0-9][0-9][0-9]') Not Null,
VendorName Varchar(255) Not Null,
VendorEmail Varchar(255) Check (VendorEmail Like '%@%.%') Not Null,
VendorAddress Varchar(255) Check (VendorAddress Like '% Street') Not Null,
VendorPhoneNumber Char(15) Not Null
)

INSERT INTO MsVendor VALUES
('VE001', 'PT. Cahaya Jaya', 'jayacahaya@gmail.com', 'Titik Sampai Street', '08780808010'),
('VE002', 'Rina Sari', 'rinarina@gmail.com', 'Diponegoro C Street ', '087489456149'),
('VE003', 'Agus Setiawan', 'aguswalrus@gmail.com', 'Merdeka IV Street', '081024165233'),
('VE004', 'Dewi Novitasari', 'novidewi@gmail.com', 'Tebet Raya Street', '087987415622'),
('VE005', 'PT. Sinar Abadi', 'sinarabadi@gmail.com', 'Gajah Mada Street', '082117798415'),
('VE006', 'Budi Santoso', 'budysantoso@gmail.com', 'Kebon Raya VI Street', '087009419481'),
('VE007', 'PT. Agung Perkasa', 'agungperkasa@gmail.com', 'Jalan Asia Afrika Street', '082191652362'),
('VE008', 'PT. Mandiri Setia', 'mandiri.setia@gmail.com', 'Cendrawasih Street', '087984165289'),
('VE009', 'CV. Maju Jaya', 'majujaya@gmail.com', 'Hayam Wuruk Street', '082197416574'),
('VE010', 'PT. Berkah Sejahtera', 'berkahsejahter@gmail.com', 'Veteranisasi Street', '087978415952'),
('VE011', 'Rudi Setiawan', 'setiawan.rudi@gmail.com', 'Gaharu VI Street', '087785643155')


CREATE TABLE TransactionDetail (
PurchaseID Varchar(5) Primary Key Check (PurchaseID Like 'PU[0-9][0-9][0-9]') Not Null,
StaffID Varchar(5) Check (StaffID Like 'ST[0-9][0-9][0-9]') Not Null,
Foreign Key (StaffID) References MsStaff (StaffID),
VendorID Varchar(5) Check (VendorID Like 'VE[0-9][0-9][0-9]') Not Null,
Foreign Key (VendorID) References MsVendor (VendorID),
ChocolateID Varchar(5) Check (ChocolateID Like 'CO[0-9][0-9][0-9]') Not Null,
Foreign Key (ChocolateID) References MsChocolate (ChocolateID),
PurchaseDate Date Not Null,
ChocolatePurchased Int Not Null,
Qty Int Not Null
)

INSERT INTO TransactionDetail VALUES
('PU001', 'ST001', 'VE001','CO001', '2022-08-02', 8, 7),
('PU002', 'ST001', 'VE001','CO001', '2022-04-22', 10, 18),
('PU003', 'ST002', 'VE001','CO002', '2022-10-30', 12, 55),
('PU004', 'ST003', 'VE002','CO002', '2022-09-25', 3, 2),
('PU005', 'ST003', 'VE002','CO002', '2022-12-26', 15, 13),
('PU006', 'ST004', 'VE003','CO003', '2022-11-30', 14, 9),
('PU007', 'ST004', 'VE003','CO003',  '2023-01-25', 17, 9),
('PU008', 'ST004', 'VE004','CO004', '2022-04-25', 11, 6),
('PU009', 'ST005', 'VE004','CO005',  '2022-09-01', 12, 12),
('PU010', 'ST005', 'VE005','CO005',  '2022-10-09', 14, 11),
('PU011', 'ST006', 'VE006','CO005',  '2022-12-24', 1, 1),
('PU012', 'ST006', 'VE007','CO005',  '2022-10-26', 12, 2),
('PU013', 'ST006', 'VE007','CO006',  '2023-12-14', 13, 5),
('PU014', 'ST007', 'VE007','CO006',  '2022-10-01', 14, 7),
('PU015', 'ST008', 'VE008','CO007',  '2022-01-05', 10, 20),
('PU016', 'ST008', 'VE008','CO007',  '2022-02-02', 36, 11),
('PU017', 'ST009', 'VE008','CO007',  '2022-04-07', 1, 3),
('PU018', 'ST009', 'VE009','CO008',  '2023-04-09', 9, 7),
('PU019', 'ST010', 'VE009','CO009',  '2023-05-28', 19, 6),
('PU020', 'ST010', 'VE009','CO010',  '2022-06-17', 20, 19),
('PU021', 'ST011', 'VE009','CO011',  '2022-08-09', 9, 7),
('PU022', 'ST012', 'VE010','CO012',  '2022-11-25', 7, 24),
('PU023', 'ST012', 'VE010','CO013',  '2022-12-12', 9, 26),
('PU024', 'ST012', 'VE010','CO014',  '2023-02-19', 10, 15),
('PU025', 'ST013', 'VE011','CO014',  '2022-11-09', 7, 17)


CREATE TABLE [Transaction] (
TransactionID Varchar(5) Primary Key Check (TransactionID Like 'SL[0-9][0-9][0-9]') Not Null,
StaffID Varchar(5) Check (StaffID Like 'ST[0-9][0-9][0-9]') Not Null,
Foreign Key (StaffID) References MsStaff (StaffID),
CustomerID Varchar(5) Check (CustomerID Like 'CU[0-9][0-9][0-9]') Not Null,
Foreign Key (CustomerID) References MsCustomer (CustomerID),
TransactionDate Date Not Null,
ChocolateSold Int Not Null,
Qty Int Not Null
)

INSERT INTO [Transaction] VALUES
('SL001', 'ST001', 'CU001', '2022-11-22', 18, 5),
('SL002', 'ST002', 'CU001', '2023-06-06', 21, 36),
('SL003', 'ST003', 'CU002', '2022-10-22', 11, 10),
('SL004', 'ST003', 'CU003', '2022-11-11', 23, 22),
('SL005', 'ST004', 'CU004', '2022-12-10', 32, 29),
('SL006', 'ST005', 'CU005', '2022-04-25', 12, 10),
('SL007', 'ST006', 'CU006', '2022-02-11', 10, 8),
('SL008', 'ST007', 'CU007', '2023-03-12', 19, 8),
('SL009', 'ST008', 'CU007', '2022-08-09', 10, 12),
('SL010', 'ST009', 'CU008', '2022-09-07', 11, 9),
('SL011', 'ST009', 'CU008', '2022-11-10', 9, 7),
('SL012', 'ST010', 'CU008', '2022-02-09', 13, 12),
('SL013', 'ST011', 'CU009', '2023-02-01', 4, 3),
('SL014', 'ST012', 'CU010', '2022-04-02', 9, 8),
('SL015', 'ST013', 'CU010', '2022-05-23', 12, 9)


-- 9.	Create a view named 'Vendor Max Transaction View' to display Vendor Number (obtained by replacing 'VE' with 'Vendor ' from VendorID), VendorName, Total Transaction Made (obtained from the total transaction made count), Maximum Quantity (obtained from maximum of Quantity) for each even digit number of VendorID and Maximum Quantity must be greater than 12.
CREATE VIEW [Vendor Max Transaction View] AS
SELECT STUFF (mv.VendorID, 1, 2, 'Vendor') AS VendorNumber,
VendorName,
COUNT (*) AS [Total Transaction Count],
MAX (TD.Qty) AS [Maximum Quantity]
FROM TransactionDetail td
JOIN MsVendor mv ON td.VendorID = mv.VendorID
WHERE mv.VendorID IN (0, 2, 4, 6, 8) AND Qty > 12
GROUP BY mv.VendorID, mv.VendorName

-- 10. Create view named 'Chocolate Minimum Transaction View' to display SalesID, SalesDate (obtained from SalesDate in 'dd/mm/yyyy' format), StaffName, StaffGender, Minimum Chocolate Sold (obtained from minimum of Quantity), and Total Chocolate Sold (obtained from total of Quantity) for SalesDate that occurs after 2020 and ChocolatePrice is greater than 10000.
CREATE VIEW [Chocolate Minimum Transaction View] AS
SELECT td.PurchaseID,
FORMAT (td.PurchaseDate, 'dd/mm/yyyy') AS SalesDate,
ms.StaffName, ms.StaffGender,
MIN (td.Qty) AS [Minimum Chocolate Sold],
SUM (td.Qty) AS [Total Chocolate Sold]
FROM TransactionDetail td
JOIN MsStaff ms ON td.StaffID = ms.StaffID
JOIN MsChocolate mc ON  td.ChocolateID = mc.ChocolateID
WHERE PurchaseDate >= '2020-01-01' AND ChocolatePrice > 10000
GROUP BY td.PurchaseID, td.PurchaseDate, ms.StaffName, ms.StaffGender;