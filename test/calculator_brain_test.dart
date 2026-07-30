import 'package:bmi_calculator/calculator_brain.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Testing BMI calculation", () {
    //   Act & assert
    CalculatorBrain cal = CalculatorBrain(weight: 56, height: 170);
    cal.calculateBMI();
    var result = cal.getResults();
    var result2 = cal.getSuggestions();
    expect(result, 'Normal');
    expect(result2, "You've a normal body weight. Good job");
  });
}
