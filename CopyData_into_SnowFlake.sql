use database our_first_db

/*Create a table to load the data*/
create or replace TABLE Address(
	"AddressID" int,
	 "AddressLine1" varchar (60),
	 "AddressLine2" varchar (60),
	 "City" varchar (30),
	 "StateProvince" varchar(50),
	 "CountryRegion" varchar(50) ,
	 "PostalCode" nvarchar (15)  ,
	 "rowguid" varchar,
	 "ModifiedDate" datetime);

select * from OUR_FIRST_DB.PUBLIC.ADDRESS;

/*Copy command to load the data frm stage to the table*/
copy into OUR_FIRST_DB.PUBLIC.ADDRESS
from @MANAGE_DB.EXTERNAL_STAGES.AZURE_STAGE
file_format = (type = 'parquet')
match_by_column_name = case_sensitive;
