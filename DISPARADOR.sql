--- EL TRIGGER  PERMITE MANDAR ALERTAS CUANDO LA TABLA SE ALTERA

SET TERMOUT ON; 
SET VERIFY OFF; 
SET SERVEROUTPUT ON SIZE = 10000;



DROP TRIGGER DIST; 


CREATE OR REPLACE TRIGGER DIST AFTER INSERT OR DELETE OR UPDATE ON S_REGION 

-----DECLARACIONES


BEGIN


IF INSERTING THEN 
  DBMS_OUTPUT.PUT_LINE('AGREGADO NUEVO REGISTRO EN S_REGION');
  ELSIF UPDATING THEN
   DBMS_OUTPUT.PUT_LINE('MODIFICADO UN NUEVO REGISTRO EN S_REGION');
  ELSIF DELETING THEN
   DBMS_OUTPUT.PUT_LINE('ELIMINO UN NUEVO REGISTRO EN S_REGION');   
   
  END IF;
END; 

/

COMMIT; 
  

  