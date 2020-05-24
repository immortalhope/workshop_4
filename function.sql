--This function will return museum_name and city


CREATE TYPE rawGetMuseum AS OBJECT(
    visit_museum_name VARCHAR(4000),
    visit_city VARCHAR(4000)
)
/
CREATE TYPE table_get_museum IS TABLE OF rawGetMuseum
/
CREATE OR REPLACE FUNCTION GetMuseum
RETURN table_get_museum
AS 
    result_table table_get_museum:=table_get_museum();    
BEGIN
    for cursor_museum in (SELECT museum_name, city FROM type_museum)
    LOOP
        result_table.extend;
        result_table(result_table.last):=rawGetMuseum(cursor_museum.museum_name,
            cursor_museum.city);
    END LOOP;
    RETURN result_table;
END;



