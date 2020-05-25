SET SERVEROUTPUT ON;

--Testing the procedure
DECLARE 
    mname museum.museum_name%TYPE;
    vname visitor.visitor_name%type;
    
BEGIN 
    --Right situation.  
    mname := 'JOHN MALLOY ART';
    vname := 'Den';
    AddVisitor(
        m_name=>mname
        ,v_name=>vname
    );
    
    --Situation that couse exception. 
    mname := 'ALASKA SPORTS HALL OF FAME';
    vname := 'YANA';
    AddVisitor(
        m_name=>mname
        ,v_name=>vname
    );
    
    --Situation that couses exception.
    mname := 'MUSEUM';
    vname := 'DEN';
    AddVisitor(
        m_name=>mname
        ,v_name=>vname
    );
    
END;


--Testing the function
SELECT * FROM TABLE (GetMuseum);








