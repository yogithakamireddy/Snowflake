/*Show all named stages*/
SHOW STAGES;

/*List all user stages*/
LIST @~;

/*List all table stages*/
LIST @%LOAN_PAYMENT;

/*Create a database and schema to store stages*/
CREATE OR REPLACE DATABASE MANAGE_DB;
CREATE OR REPLACE SCHEMA EXTERNAL_STAGES;

/*Creating externalstage*/
CREATE OR REPLACE stage MANAGE_DB.EXTERNAL_STAGES.azure_stage
    URL = 'azure://klydatalake.blob.core.windows.net/bronze/SalesLT/Address/'
    CREDENTIALS=( azure_sas_token = 'ENTER SAS TOKEN HERE');
    file_format = (format_name = MANAGE_DB.FILE_FORMATS.parquet_file_format);


DESC stage MANAGE_DB.EXTERNAL_STAGES.AZURE_STAGE

list @azure_stage;   
