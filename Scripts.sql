
drop database homefood
Create database homefood

use homefood

--Create table MAS_DeliveryLocation(
--DeliveyPointId int IDENTITY(1,1) ,
--UniqueId UNIQUEIDENTIFIER  default NEWID(),
--DeliveryPointName Varchar(100) not null,
--AreaId int not null,
--IsDeleted bit not null,
--PRIMARY KEY(DeliveyPointId,UniqueId)
--)

--Create table MAS_AddressType
--(AddressTypeId  int IDENTITY(1,1) ,
--AddressType Varchar(100) not null,
--UniqueId UNIQUEIDENTIFIER  default NEWID(),
--IsDeleted bit not null,
--PRIMARY KEY(AddressTypeId,UniqueId)
--)

--Create table MAS_City
--(CityId int IDENTITY(1,1)  ,
--CityName Varchar(100) not null,
--UniqueId UNIQUEIDENTIFIER  default NEWID(),
--IsDeleted bit not null,
--PRIMARY KEY(CityId,UniqueId)
--)

--Create table MAS_Area (
--AreaId int IDENTITY(1,1)  ,
--AreaName Varchar(100) not null,
--CityId int foreign key references MAS_City(CityId),
--UniqueId UNIQUEIDENTIFIER  default NEWID(),
--IsDeleted bit not null,
--PRIMARY KEY(AreaId,UniqueId),
--)

--Create table MAS_Role(
--RoleId int IDENTITY(1,1)  ,
--RoleName Varchar(100) not null,
--UniqueId UNIQUEIDENTIFIER  default NEWID(),
--IsDeleted bit not null,
--PRIMARY KEY(RoleId,UniqueId)
--)


Create table MAS_ChefType
(
ChefTypeId int IDENTITY(1,1)  ,
ChefType Varchar(100) not null,
UniqueId UNIQUEIDENTIFIER  default NEWID() not null,
IsDeleted bit not null,
PRIMARY KEY(ChefTypeId)
)

Create table MAS_PaymentType
(UniqueId UNIQUEIDENTIFIER  default NEWID() not null,
PaymentTypeId int IDENTITY(1,1)  ,
PaymentType Varchar(100) not null,
IsDeleted bit not null,
PRIMARY KEY(PaymentTypeId)
)

Create table MAS_Category
(UniqueId UNIQUEIDENTIFIER  default NEWID() not null,
CategoryId int IDENTITY(1,1)  ,
Name Varchar(100) not null,
Descriptions Varchar(max)   null,
IsDeleted bit not null,
PRIMARY KEY(CategoryId)
)

Create table MAS_FoodType(UniqueId UNIQUEIDENTIFIER  default NEWID() not null,
FoodTypeID int IDENTITY(1,1)  ,
FoodType Varchar(100) not null,
FoodTypeCode int   null,
IsDeleted bit not null,
PRIMARY KEY(FoodTypeID)
)

Create table MAS_Food(UniqueId UNIQUEIDENTIFIER  default NEWID() not null,
FoodId int IDENTITY(1,1)  ,
FoodName Varchar(100) not null,
Descriptions Varchar(max)   null,
CategoryId int foreign key references MAS_Category(CategoryId),
FoodTypeID int foreign key references MAS_FoodType(FoodTypeID),
IsDeleted bit not null,
PRIMARY KEY(FoodId)
)

Create table MAS_Price(UniqueId UNIQUEIDENTIFIER  default NEWID() not null,
PriceId int IDENTITY(1,1)  ,
FoodId int foreign key references MAS_Food(FoodId),
Price Varchar(50) not null,
GSTPrice Varchar(50)   null,
GSTPercentage Varchar(10)   null,
IsDeleted bit not null,
PRIMARY KEY(PriceId)
)

--Create table MAS_DiscountType 
--(UniqueId UNIQUEIDENTIFIER  default NEWID(),
--DiscountTypeID int IDENTITY(1,1)  ,
--DiscountType Varchar(100) not null,
--Descriptions Varchar(max)   null,
--IsDeleted bit not null,
--PRIMARY KEY(DiscountTypeID)
--)

--Create table MAS_Discount 
--(UniqueId UNIQUEIDENTIFIER  default NEWID(),
--DiscountId int IDENTITY(1,1)  ,
--DiscountName Varchar(100) not null,
--FoodId int foreign key references MAS_Food(FoodId),
--DiscountTypeID int foreign key references MAS_DiscountType(DiscountTypeID),
--DiscountPrice int not null,
--DiscountPercentage int not null,
--ValidityFrom datetime not null,
--ValidityTo datetime not null,
--IsDeleted bit not null,
--PRIMARY KEY(DiscountId)
--)


Create table MAS_OrderType 
(UniqueId UNIQUEIDENTIFIER  default NEWID() not null,
OrderTypeId
 int IDENTITY(1,1) ,
OrderTypeCode
 Varchar(50) not null,
Descriptions Varchar(max)   null,
IsDeleted bit not null,
PRIMARY KEY(OrderTypeId)
)