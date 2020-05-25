SET SERVEROUT ON;

CREATE OR REPLACE PACKAGE museum_package IS 
    TYPE rawGetMuseum IS RECORD(
    visit_museum_name VARCHAR(4000),
    visit_city VARCHAR(4000)
    );
    TYPE table_get_museum IS TABLE OF rawGetMuseum;
    
    FUNCTION GetMuseum
    RETURN table_get_museum
    PIPELINED;
    
    PROCEDURE AddVisitor(m_name in museum.museum_name%type, 
    v_name in visitor.visitor_name%type);
    
END museum_package;
/


CREATE OR REPLACE PACKAGE BODY museum_package IS 
    FUNCTION GetMuseum
    RETURN table_get_museum
    PIPELINED
    IS 
        result_table table_get_museum:=table_get_museum();    
    BEGIN
        for cursor_museum in (SELECT museum_name, city FROM type_museum)
        LOOP
            pipe row(cursor_museum);
        END LOOP;
    END;
    
    PROCEDURE AddVisitor(m_name in museum.museum_name%type, 
        v_name in visitor.visitor_name%type)
    AS 
        var_visitor_name visitor.visitor_name%type;
        var_museum_name museum.museum_name%type;
    BEGIN
        SELECT visitor_name INTO var_visitor_name FROM visitor WHERE visitor.visitor_name = v_name;
        SELECT museum_name INTO var_museum_name FROM museum WHERE museum_name = m_name;
    
        INSERT INTO VISIT (visitor_name, museum_name) values (v_name, m_name);
    EXCEPTION   
        WHEN NO_DATA_FOUND THEN 
        dbms_output.put_line('Data not found!');
    END;

END museum_package;













    
    




