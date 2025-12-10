
    public class QuadraticEquation {

        private final double a;
        private final double b;
        private final double c;

        public QuadraticEquation(double a, double b, double c) {
            this.a = a;
            this.b = b;
            this.c = c;
        }


        public double getA() {
            return a;
        }

        public double getB() {
            return b;
        }

        public double getC() {
            return c;
        }


        public double getDelta() {
            return b * b - 4 * a * c;
        }


        public boolean isNoSolution() {
            return getDelta() < 0;
        }


        public boolean isDoubleSolution() {
            return getDelta() == 0;
        }


        public double getRoot1() {
            return (-b + Math.sqrt(getDelta())) / (2 * a);
        }

        
        public double getRoot2() {
            return (-b - Math.sqrt(getDelta())) / (2 * a);
        }

        public static void main(String[] args) {
            QuadraticEquation pt = new QuadraticEquation(1, -3, 2);

            if (pt.isNoSolution()) {
                System.out.println("Phương trình vô nghiệm");
            } else if (pt.isDoubleSolution()) {
                System.out.println("Phương trình có nghiệm kép:");
                System.out.println("x = " + pt.getRoot1());
            } else {
                System.out.println("Phương trình có 2 nghiệm:");
                System.out.println("x1 = " + pt.getRoot1());
                System.out.println("x2 = " + pt.getRoot2());
            }
        }
}
