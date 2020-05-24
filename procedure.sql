--Додає відвідувача до музею. Exception: відвідувача чи музей не знайдено

SET SERVEROUT ON;

CREATE OR REPLACE PROCEDURE AddVisitor(m_name in museum.museum_name%type, 
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