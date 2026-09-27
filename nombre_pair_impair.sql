-- Nom du fichier : nombre_pair_impair.sql

SET SERVEROUTPUT ON;
ACCEPT p_nombre NUMBER PROMPT 'Entrez un nombre : '

DECLARE
    nombre NUMBER := &p_nombre;
BEGIN
    IF MOD(nombre, 2) = 0 THEN
        DBMS_OUTPUT.PUT_LINE(nombre || ' est PAIR.');
    ELSE
        DBMS_OUTPUT.PUT_LINE(nombre || ' est IMPAIR.');
    END IF;
END;
/