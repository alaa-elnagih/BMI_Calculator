import 'package:flutter/material.dart';
import 'package:untitled7/result_screen.dart';
import 'package:untitled7/test_screen.dart';
import 'package:untitled7/bmi_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ResultScreen(
        bmiResult: "9.3",
        resultText: "Underweight",
        interpretation: "You have lower than normal body weight. You can eat bit more.",
      ),
    );
  }
}
