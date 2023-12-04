import 'package:flutter/material.dart';

class New extends StatelessWidget {
  const New({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text styles'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: Colors.black,
        width: double.infinity,
        height: double.infinity,
        child: const Center(
          child: Text(
            "Hello world ",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.amber,
            ),
          ),
        ),
      ),
    );
  }
}
