// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:simple_calculator/buttons.dart';

void main() {
  runApp(
    const Calculator(),
  );
}

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SimpleCalculator(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({Key? key}) : super(key: key);

  @override
  _SimpleCalculatorState createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  var userQuestion = '';
  var userAnswer = '';
  final List<String> _buttons = [
    'C',
    'DEL',
    '%',
    '/',
    '9',
    '8',
    '7',
    'X',
    '6',
    '5',
    '4',
    '-',
    '3',
    '2',
    '1',
    '+',
    '0',
    '.',
    'ANS',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Center(
          child: Text('Simple Calculator'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Container(
                  child: Text('Question?'),
                ),
                Container(
                  child: Text('Answer.'),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemCount: _buttons.length,
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return MyButton(
                      buttonText: _buttons[index],
                      buttonColor: Colors.amberAccent[400],
                      textColor: Colors.white,
                    );
                  } else if (index == 1) {
                    return MyButton(
                      buttonText: _buttons[index],
                      buttonColor: Colors.redAccent[100],
                      textColor: Colors.white,
                    );
                  } else if (index == (_buttons.length - 2)) {
                    return MyButton(
                      buttonText: _buttons[index],
                      buttonColor: Colors.amberAccent[400],
                      textColor: Colors.white,
                    );
                  } else {
                    return MyButton(
                      buttonText: _buttons[index],
                      buttonColor: isOperator(_buttons[index])
                          ? Colors.teal
                          : Colors.white70,
                      textColor: isOperator(_buttons[index])
                          ? Colors.white
                          : Colors.black,
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool isOperator(String x) {
    if (x == '%' || x == '/' || x == 'X' || x == '-' || x == '+' || x == '=') {
      return true;
    }

    return false;
  }
}
