CREATE OR REPLACE PROCEDURE SP_TAX (
    P_EMPNO IN NUMBER,
    P_TAX OUT NUMBER,
    P_TDS OUT NUMBER
) AS
    V_SAL NUMBER(20);
BEGIN
    -- Select the salary of the employee with the given employee number
    SELECT SAL INTO V_SAL FROM EMP WHERE EMPNO = P_EMPNO;

    -- Calculate the tax and TDS
    P_TAX := V_SAL * 0.02;
    P_TDS := V_SAL * 0.03;

    -- Optionally, you can print the values
    DBMS_OUTPUT.PUT_LINE('Tax: ' || P_TAX);
    DBMS_OUTPUT.PUT_LINE('TDS: ' || P_TDS);
END;
/
