import 'package:flutter/material.dart';
import 'package:letter_grader/grade_calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Letter Grader',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(body: GradeCalculatorWidget()),
    );
  }
}

class GradeCalculatorWidget extends StatefulWidget {
  const GradeCalculatorWidget({super.key});

  @override
  State<GradeCalculatorWidget> createState() => _GradeCalculatorWidgetState();
}

class _GradeCalculatorWidgetState extends State<GradeCalculatorWidget> {
  final TextEditingController _controller = TextEditingController();
  String _message = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Enter your score'),
        TextField(
          controller: _controller,
        ),
        ElevatedButton(
          onPressed: _onButtonPressed,
          child: const Text('Grade me'),
        ),
        Text(_message),
      ],
    );
  }

  void _onButtonPressed() {
    setState(() {
      GradeCalculator calculator = GradeCalculator();
      int score = int.parse(_controller.text);
      String grade = calculator.letterGrade(score);
      _message = "Grade: $grade";
    });
  }
}
