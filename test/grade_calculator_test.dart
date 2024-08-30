import 'package:flutter_test/flutter_test.dart';
import 'package:letter_grader/grade_calculator.dart';

void main() {
  final calculator = GradeCalculator();

  test("95 is a A", () {
    final result = calculator.letterGrade(95);
    expect(result, "A");
  });

  test("87 is a B", () {
    final result = calculator.letterGrade(87);
    expect(result, "B");
  });

  test("75 is a C", () {
    final result = calculator.letterGrade(75);
    expect(result, "C");
  });

  test("66 is a D", () {
    final result = calculator.letterGrade(66);
    expect(result, "D");
  });

  test("34 is a F", () {
    final result = calculator.letterGrade(34);
    expect(result, "F");
  });
}
