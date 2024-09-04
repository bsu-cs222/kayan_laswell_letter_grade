class GradeCalculator {
  letterGrade(int score) {
    switch (score) {
      case >= 90:
        return "A";
      case >= 80 && <= 89:
        return "B";
      case >= 70 && <= 79:
        return "C";
      case >= 60 && <= 69:
        return "D";
      default:
        return "F";
    }
  }
}
