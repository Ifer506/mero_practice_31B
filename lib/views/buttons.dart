import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button"),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.amber,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: null, child: Text("hello")),
            ElevatedButton(onPressed: null, child: Text("hello")),
            ElevatedButton(onPressed: null, child: Text("hello")),
          ],
        ),
      ),
    );
  }
}
