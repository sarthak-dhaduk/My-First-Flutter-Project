import 'package:flutter/material.dart';

class BMS extends StatefulWidget {
  const BMS({super.key});

  @override
  State<BMS> createState() => _BMSState();
}

class _BMSState extends State<BMS> {
  final TextEditingController _heightFeetController = TextEditingController();
  final TextEditingController _heightInchesController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  
  String _bmiResult = '';
  String _bmiCategory = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Image(image: AssetImage('assets/BMI.png')),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _heightFeetController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.height, color: Colors.blue, size: 30),
                            border: OutlineInputBorder(),
                            labelText: 'Height (feet)',
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          controller: _heightInchesController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.height, color: Colors.blue, size: 30),
                            border: OutlineInputBorder(),
                            labelText: 'Height (inches)',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _weightController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.line_weight_sharp, color: Colors.blue, size: 30),
                      border: OutlineInputBorder(),
                      labelText: 'Weight (kg)',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: calculateBMI,
                    child: Text('Calculate'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    _bmiResult.isEmpty ? '' : 'Your BMI is $_bmiResult',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    _bmiCategory,
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void calculateBMI() {
    double heightFeet = double.parse(_heightFeetController.text);
    double heightInches = double.parse(_heightInchesController.text);
    double weightInKg = double.parse(_weightController.text);

    double totalHeightInInches = (heightFeet * 12) + heightInches;
    double heightInMeters = totalHeightInInches * 0.0254;

    double bmi = weightInKg / (heightInMeters * heightInMeters);

    String bmiCategory;
    if (bmi < 18.5) {
      bmiCategory = 'Underweight';
    } else if (bmi >= 18.5 && bmi < 25) {
      bmiCategory = 'Normal weight';
    } else if (bmi >= 25 && bmi < 30) {
      bmiCategory = 'Overweight';
    } else {
      bmiCategory = 'Obese';
    }

    setState(() {
      _bmiResult = bmi.toStringAsFixed(2);
      _bmiCategory = bmiCategory;
    });
  }
}
