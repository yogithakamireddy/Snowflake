Desc stage MANAGE_DB.EXTERNAL_STAGES.AZURE_STAGE

/*CREATING SCHEMA TO KEEP THINGS ORGANIZED*/
create or replace schema manage_db.File_formats

/*CREATING FILE FORMAT*/
create or replace file format MANAGE_DB.FILE_FORMATS.parquet_file_format
type = 'parquet'

/*see properties of file format object*/
Desc file format MANAGE_DB.FILE_FORMATS.parquet_file_format

