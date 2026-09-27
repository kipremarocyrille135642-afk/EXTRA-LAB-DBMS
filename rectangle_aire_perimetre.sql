CREATE OR REPLACE PROCEDURE calcul_rectangle (
    p_longueur IN NUMBER,
    p_largeur  IN NUMBER
) IS
    v_aire      NUMBER;
    v_perimetre NUMBER;
BEGIN
    v_aire      := p_longueur * p_largeur;
    v_perimetre := 2 * (p_longueur + p_largeur);

    DBMS_OUTPUT.PUT_LINE('Aire      : ' || v_aire);
    DBMS_OUTPUT.PUT_LINE('Périmètre : ' || v_perimetre);
END calcul_rectangle;
/