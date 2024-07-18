import 'package:flutter/material.dart';

class BMS extends StatefulWidget {
  const BMS({super.key});

  @override
  State<BMS> createState() => _BMSState();
}

class _BMSState extends State<BMS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMS'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Image(image: AssetImage(
                    'assets/BMI.png'
                  )),
                ),
                SizedBox(
                  height: 60,
                ),
                TextField(
                  keyboardType: 
                  TextInputType.number,
                  decoration: InputDecoration(
                    icon: 
                    Icon(Icons.align_horizontal_right, color: Colors.blue, size: 30),
                    border: OutlineInputBorder(),
                    labelText: 'Enter hight ...',
                    ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  keyboardType: 
                  TextInputType.number,
                  decoration: InputDecoration(
                    icon: 
                    Icon(Icons.line_weight_sharp, color: Colors.blue, size: 30),
                    border: OutlineInputBorder(),
                    labelText: 'Enter weight ...',
                    ),
                ),
                 SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: (){

                }, 
                child: Text('Calculate'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}