import 'package:flutter/material.dart';
import 'package:bmi_calclulator/formula.dart';

class ResultPage extends StatefulWidget {
  int weight;
  int age;
  int height;
  ResultPage({required this.weight, required this.height, required this.age});

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  Logic logic = Logic();
  double bmiResult = 0;
  @override
  void initState() {
    bmiResult = logic.calculateBMI(widget.height, widget.weight);

    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'BMI Results',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              '${bmiResult.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 70,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
