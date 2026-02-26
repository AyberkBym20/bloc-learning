class MathRepo {
  int addUp(String fetchNum1, String fetchNum2) {
    int number1 = int.parse(fetchNum1);
    int number2 = int.parse(fetchNum2);
    int sum = number1 + number2;
    return sum;
  }

  int addmultiplicationUpUp(String fetchNum1, String fetchNum2) {
    int number1 = int.parse(fetchNum1);
    int number2 = int.parse(fetchNum2);
    int sum = number1 * number2;
    return sum;
  }
}
