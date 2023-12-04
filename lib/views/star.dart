import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  const Star({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic View'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: Colors.amber,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.star,
              size: 30,
            ),
            Icon(
              Icons.star,
              size: 30,
            ),
            Icon(
              Icons.star,
              size: 30,
            ),
            Icon(
              Icons.star,
              size: 30,
            ),
            Icon(
              Icons.star,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
