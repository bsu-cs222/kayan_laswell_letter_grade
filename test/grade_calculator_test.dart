import 'package:flutter_test/flutter_test.dart';
import 'package:letter_grader/grade_calculator.dart';

List<int> score = [95, 87, 75, 66, 34];
List<String> grade = ["A", "B", "C", "D", "F"];

void main() {
  final calculator = GradeCalculator();

  for (int i = 0; i < score.length; i++) {
    test("expect ${score[i]} to be ${grade[i]}", () {
      String result = calculator.letterGrader(score[i]);
      expect(result, grade[i]);
    });
  }
}
