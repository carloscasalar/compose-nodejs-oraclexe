/**
 *  Fizzbuzz package spec
 *  Fizzbuzz (http://codingdojo.org/cgi-bin/index.pl?KataFizzBuzz) modified kata
 *  Instead of return 100 values in a row we will have a function which
 *  returns number, fizz, buzz or fizzbuzz for a single number.
 */
CREATE OR REPLACE PACKAGE FIZZBUZZ AS

  /**
   * Return the answer for a given number
   * @instanceof FIZZBUZZ
   * @param {number} nNumber Number to evaluate
   * @return A number, fizz, buzz or fizzzbuzzz
   */
  FUNCTION say( nNumber IN NUMBER) RETURN VARCHAR2;
END;
/
