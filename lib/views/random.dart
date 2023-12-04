import 'dart:math';

import 'package:flutter/material.dart';

class Randowm extends StatefulWidget {
  const Randowm({super.key});

  @override
  State<Randowm> createState() => _RandowmState();
}

class _RandowmState extends State<Randowm> {
  int? random1;

  int? random2;

  bool result = false;

  int score = 0;

  int totalIterations = 0;

  void restartHandler() {
    setState(() {
      totalIterations = 0;
      random1 = generateRandomNumber();
      random2 = generateRandomNumber();
      result = false;

      score = 0;
    });
  }

  void check() {}

  int generateRandomNumber() {
    Random random = Random();

    return random.nextInt(100) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random"),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () {
                    if (random1! > random2!) {
                      score++;
                      totalIterations++;
                      result = true;
                    } else {
                      result = false;
                      totalIterations++;
                    }
                  },
                  child: Text("$random1")),
              const SizedBox(
                width: 50,
              ),
              TextButton(
                  onPressed: () {
                    if (random1! < random2!) {
                      score++;
                      totalIterations++;
                      result = true;
                    } else {
                      result = false;
                      totalIterations++;
                    }
                    random1 = generateRandomNumber();
                  },
                  child: Text("$random2")),
            ],
          ),
          Text("$result"),
          const Text("Your score"),
          Text("$score/10"),
          SizedBox(
            height: 50,
            width: 100,
            child: ElevatedButton(
                onPressed: restartHandler, child: const Text("Restart")),
          )
        ],
      ),
    );
  }
}
