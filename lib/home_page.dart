import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  void _calculateAndNavigate(BuildContext context) {
    final weight = double.tryParse(_controller1.text);
    final heightInCm = double.tryParse(_controller2.text);

    if (weight != null && weight > 0 && heightInCm != null && heightInCm > 0) {
      final heightInMeters = heightInCm * 0.01; // Convert height from feet to meters
      final bmi = weight / (heightInMeters * heightInMeters);

      // Navigate to the ResultPage with the calculated BMI
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ResultPage(bmi: bmi)),
      );
    } else {
      // Show an error if the input is not valid
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter valid numbers')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(
              "https://babys.com.bd/static/img/bmi.png",
              height: 300,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _controller1,
              decoration: const InputDecoration(
                labelText: 'Enter your Weight (in Kg)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _controller2,
              decoration: const InputDecoration(
                labelText: 'Enter your Height (in cm)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () => _calculateAndNavigate(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                ),
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
