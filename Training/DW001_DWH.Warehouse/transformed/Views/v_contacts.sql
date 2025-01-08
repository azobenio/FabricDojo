CREATE VIEW transformed.v_contacts 
AS 
SELECT [customer_id] 
    ,[customer_name] 
    ,con.[customer_city_id] 
    ,lk.[customer_country_id] 
    ,[customer_email] 
    ,'HubSpot'source_system
FROM raw.hubspot_contacts con
LEFT JOIN raw.hubspot_location_lookup lk ON con.customer_city_id = lk.customer_city_id