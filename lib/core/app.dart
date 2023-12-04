import 'package:batch_31b/views/arithmetic_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(149, 97, 94, 94),
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/Arithmetic': (context) => const ArithmeticView(),
      },
    );
  }
}
