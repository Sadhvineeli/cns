import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        BigInteger p = new BigInteger("23"); // prime number
        BigInteger g = new BigInteger("5");  // base
        System.out.print("Enter Alice's private key: ");
        BigInteger a = sc.nextBigInteger();
        System.out.print("Enter Bob's private key: ");
        BigInteger b = sc.nextBigInteger();

        BigInteger A = g.modPow(a, p); // Alice's public key
        BigInteger B = g.modPow(b, p); // Bob's public key

        BigInteger sharedAlice = B.modPow(a, p);
        BigInteger sharedBob = A.modPow(b, p);

        System.out.println("\nAlice's public key: " + A);
        System.out.println("Bob's public key: " + B);
        System.out.println("Shared key (Alice): " + sharedAlice);
        System.out.println("Shared key (Bob): " + sharedBob);
    }
}
