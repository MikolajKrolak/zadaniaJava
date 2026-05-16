public class Main {
    public static void main(String[] args) {
        MyPoint point1 = new MyPoint(3,2);
        MyPoint point2 = new MyPoint(2, 4);

        double d1 = point1.distance(4, 5);
        System.out.println("Odległość 1: " + d1);

        double d2 = point1.distance(point2);
        System.out.println("Odległość 2: " + d2);

        double d3 = point1.distance();
        System.out.println("Odległość 3: " + d3);
    }
}