/**
 *  Fizzbuzz package body
 */
CREATE OR REPLACE PACKAGE BODY FIZZBUZZ AS
  /**
  * Return the answer for a given number
  * @instanceof FIZZBUZZ
  * @param {number} nNumber Number to evaluate
  * @return A number, fizz, buzz or fizzzbuzzz
  */
  FUNCTION say( nNumber IN NUMBER) RETURN VARCHAR2 IS
  BEGIN
    NULL;
  END say;
END;
/
