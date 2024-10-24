import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double bmi;

  const ResultPage({super.key, required this.bmi});

  String _getBmiDescription(double bmi) {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return 'Normal weight';
    } else if (bmi >= 25 && bmi < 29.9) {
      return 'Overweight';
    } else {
      return 'Obesity';
    }
  }

  String _getHealthAdvice(double bmi) {
    if (bmi < 18.5) {
      return 'You should aim to gain weight by eating a balanced diet and including more nutritious, high-calorie foods.';
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return 'Great! Maintain your healthy weight through a balanced diet and regular exercise.';
    } else if (bmi >= 25 && bmi < 29.9) {
      return 'Consider adopting healthier eating habits and incorporating more physical activities into your routine.';
    } else {
      return 'Consult with a healthcare provider for personalized advice and support to achieve a healthier weight.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Result'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.orangeAccent.shade100,
                border: Border.all(
                  color: Colors.orangeAccent,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  Text(
                    'Your BMI is ${bmi.toStringAsFixed(1)}',
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    _getBmiDescription(bmi),
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Health Advice:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              _getHealthAdvice(bmi),
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
