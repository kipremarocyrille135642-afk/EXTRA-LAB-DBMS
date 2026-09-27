SET SERVEROUTPUT ON;
ACCEPT p_num1 NUMBER PROMPT 'Entrez le premier nombre : '
ACCEPT p_num2 NUMBER PROMPT 'Entrez le deuxième nombre : '

DECLARE
    num1 NUMBER := &p_num1;
    num2 NUMBER := &p_num2;
    v_add NUMBER;
    v_sub NUMBER;
    v_mul NUMBER;
    v_div NUMBER;
    v_mod NUMBER;
BEGIN
    v_add := num1 + num2;
    v_sub := num1 - num2;
    v_mul := num1 * num2;
    v_mod := MOD(num1, num2);

    DBMS_OUTPUT.PUT_LINE('Nombre 1        : ' || num1);
    DBMS_OUTPUT.PUT_LINE('Nombre 2        : ' || num2);
    DBMS_OUTPUT.PUT_LINE('Addition        : ' || v_add);
    DBMS_OUTPUT.PUT_LINE('Soustraction    : ' || v_sub);
    DBMS_OUTPUT.PUT_LINE('Multiplication  : ' || v_mul);
    DBMS_OUTPUT.PUT_LINE('Reste (MOD)     : ' || v_mod);

    BEGIN
        v_div := num1 / num2;
        DBMS_OUTPUT.PUT_LINE('Division        : ' || v_div);
    EXCEPTION
        WHEN ZERO_DIVIDE THEN
            DBMS_OUTPUT.PUT_LINE('Division        : impossible (division par zéro)');
    END;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Une erreur est survenue : ' || SQLERRM);
END;
/