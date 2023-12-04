import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorViews extends StatefulWidget {
  const CalculatorViews({super.key});

  @override
  State<CalculatorViews> createState() => _CalculatorViewsState();
}

class _CalculatorViewsState extends State<CalculatorViews> {
  String statement = "";
  String result = "0";
  final List<String> buttons = [
    'C',
    '(',
    ')',
    '/',
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
    'AC',
    '0',
    '.',
    '=',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Flexible(flex: 2, child: resultWidget()),
            Expanded(flex: 4, child: _buttons()),
          ],
        ),
      ),
    );
  }

  Widget resultWidget() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.centerRight,
          child: Text(
            statement,
            style: const TextStyle(fontSize: 32),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          alignment: Alignment.centerRight,
          child: Text(
            result,
            style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Widget _buttons() {
    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      itemBuilder: (BuildContext context, int index) {
        return _myButton(buttons[index]);
      },
      itemCount: buttons.length,
    );
  }

  _myButton(String text) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: MaterialButton(
        onPressed: () {
          setState(() {
            handleButtonTap(text);
          });
        },
        textColor: Colors.white,
        shape: const CircleBorder(),
        child: Text(
          text,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }

  handleButtonTap(String text) {
    if (text == "AC") {
      statement = "";
      result = "0";
      return;
    }
    if (text == "=") {
      result = calculate();
      if (result.endsWith(".0")) {
        result = result.replaceAll(".0", "");
      }
      return;
    }

    if (text == "C") {
      statement = statement.substring(0, statement.length - 1);
      return;
    }
    statement = statement + text;
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
