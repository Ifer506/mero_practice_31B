import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

//from my understanding

class MyCalculator extends StatefulWidget {
  const MyCalculator({super.key});

  @override
  State<MyCalculator> createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  String statement = "";
  String result = "0";
  List<String> buttons = [
    'C',
    'CE',
    'hi',
    'del',
    '7',
    '8',
    '9',
    '*',
    '4',
    '5',
    '6',
    '+',
    '1',
    '2',
    '3',
    '-',
    '.',
    '0',
    '/',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Flexible(
                fit: FlexFit.loose,
                flex: 2,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          statement,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          result,
                          textAlign: TextAlign.end,
                          style: const TextStyle(
                            fontSize: 70,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ])),
            Expanded(flex: 4, child: down())
          ],
        ),
      ),
    );
  }

  Widget down() {
    return GridView.builder(
        itemCount: 20,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.white,
            shadowColor: Colors.teal,
            elevation: 3,
            child: Center(
                child: TextButton(
              onPressed: () {
                setState(() {
                  if (buttons[index].toString() == "CE") {
                    statement = "";
                    result = "0";
                    return;
                  } else if (buttons[index].toString() == "=") {
                    result = calculate();
                    if (result.endsWith(".0")) {
                      result = result.replaceAll(".0", "");
                    }
                    return;
                  } else if (buttons[index].toString() == "C") {
                    statement = statement.substring(0, statement.length - 1);
                    return;
                  }
                  statement = statement + buttons[index].toString();
                });
              },
              child: Text(
                buttons[index],
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            )),
          );
        });
  }

  calculate() {
    try {
      var exp = Parser().parse(statement);
      var evaluation = exp.evaluate(EvaluationType.REAL, ContextModel());
      return evaluation.toString();
    } catch (e) {
      return "Err";
    }
  }
}
