import 'package:flutter/material.dart';

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  // Contollers
  final firstController = TextEditingController(text: '1');
  final secondController = TextEditingController(text: '2');

  // Variables
  int result = 0;

  // Key for FormState
  void add() {
    final firstNumber = int.parse(firstController.text);
    final secondNumber = int.parse(secondController.text);

    setState(() {
      result = firstNumber + secondNumber;
    });
  }

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic View'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                controller: firstController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'First Number',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter first number';
                  } else if (int.parse(value) < 0) {
                    return 'Please enter positive number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              TextField(
                controller: secondController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Second Number',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Validate
                    if (formKey.currentState!.validate()) {
                      add();
                    }
                  },
                  child: const Text('Add'),
                ),
              ),
              Text(
                'Result is $result',
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
