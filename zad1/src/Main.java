import java.util.Scanner;
import static java.lang.Math.*;

public class Main {
    public static void main(String[] args) {
        //zad1
        double a = 2;
        double b = 2;

        System.out.println(a + b);

        //zad2
        double c = PI;
        System.out.print(pow(c, 2));

        //zad3
        Scanner scanner = new Scanner(System.in);

        System.out.print('\n');
        String napis1 = scanner.next();
        String napis2 = scanner.next();

        System.out.print('%' + napis2 + ' ' + napis1 + '%');


    }
}
