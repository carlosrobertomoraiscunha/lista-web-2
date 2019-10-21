package functions;

/**
 *
 * @author Carlos
 */
public class PrimeNumberFunctions {

    public static boolean isPrime(int number) {
        if (number == 1 || number == 0) {
            return false;
        }

        for (int j = 2; j < number; j++) {
            if (number % j == 0) {
                return false;
            }
        }
        return true;
    }
}
