import 'package:flutter/material.dart';
import 'package:flutter_application_1/BMS.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BMS(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
         visualDensity: VisualDensity.adaptivePlatformDensity
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: InkWell(
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Color.fromARGB(255, 255, 0, 0),
                  ),
                  onLongPress: () {
                    print('Hii');
                  },
                ),
              ),
              Expanded(
                child: Container(
                  height: 50,
                  width: 50,
                  color: Color.fromARGB(255, 0, 255, 145),
                ),
              ),
              Expanded(
                child: Container(
                  height: 50,
                  width: 50,
                  color: Color.fromARGB(255, 0, 102, 255),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class aboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              height: 100,
              width: 50,
              color: Color.fromARGB(255, 248, 0, 0),
            ),
            Container(
              height: 100,
              width: 50,
              color: Color.fromARGB(255, 248, 0, 0),
            ),
            Container(
              height: 100,
              width: 50,
              color: Color.fromARGB(255, 248, 0, 0),
            ),
            Container(
              height: 100,
              width: 50,
              color: Color.fromARGB(255, 248, 0, 0),
            ),
            Container(
              height: 100,
              width: 50,
              color: Color.fromARGB(255, 248, 0, 0),
            ),
            Container(
              height: 100,
              width: 50,
              color: Color.fromARGB(255, 248, 0, 0),
            ),
            Container(
              height: 100,
              width: 50,
              color: Color.fromARGB(255, 248, 0, 0),
            ),
            Container(
              height: 100,
              width: 50,
              color: Color.fromARGB(255, 248, 0, 0),
            ),
            Container(
              height: 100,
              width: 50,
              color: Color.fromARGB(255, 248, 0, 0),
            ),
            Container(
              height: 100,
              width: 50,
              color: Color.fromARGB(255, 248, 0, 0),
            ),
            Container(
              height: 100,
              width: 50,
              color: Color.fromARGB(255, 248, 0, 0),
            ),
            Container(
              height: 100,
              width: 50,
              color: Color.fromARGB(255, 248, 0, 0),
            ),
            Container(
              height: 100,
              width: 50,
              color: Color.fromARGB(255, 248, 0, 0),
            ),
            Container(
              height: 100,
              width: 50,
              color: Color.fromARGB(255, 248, 0, 0),
            ),
            Container(
              height: 100,
              width: 50,
              color: Color.fromARGB(255, 248, 0, 0),
            ),
            Container(
              height: 100,
              width: 50,
              color: Color.fromARGB(255, 0, 128, 248),
            ),
          ],
        )),
      ),
    );
  }
}

class counterScreen extends StatefulWidget {
  const counterScreen({super.key});

  @override
  State<counterScreen> createState() => _counterScreenState();
}

class _counterScreenState extends State<counterScreen> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Counter Screen"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 108, 3),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                child: Text(
                  _counter.toString(),
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _counter++;
                    });
                  },
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 0, 255, 13),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(color: Colors.black, blurRadius: 3.0)
                      ],
                    ),
                    child: Center(
                        child: Icon(Icons.expand_less_outlined, color: Colors.white, size: 35,),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (_counter > 0) {
                        while (_counter > 0) {
                          Future.delayed(Duration (milliseconds: 10),() {
                          _counter--;
                          });
                        }
                      } else {
                        while (_counter < 0) {
                          Future.delayed(Duration (milliseconds: 10),() {
                          _counter++;
                          });
                        }
                      }
                    });
                  },
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 117, 117, 117),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(color: Colors.black, blurRadius: 3.0)
                      ],
                    ),
                    child: Center(
                        child: Icon(Icons.circle_outlined, color: Colors.white, size: 35,),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _counter--;
                    });
                  },
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 1, 1),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(color: Colors.black, blurRadius: 3.0)
                      ],
                    ),
                    child: Center(
                        child: Icon(Icons.expand_more_outlined, color: Colors.white, size: 35,),
                        ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
