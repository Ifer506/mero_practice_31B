import 'package:batch_31b/core/common/dashboard_button.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    var gap = const SizedBox(
      height: 10,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("DashBoard"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            DashButton(routing: '/arithmetic', title: "Arithmetic"),
            DashButton(routing: "/myCalculator", title: "My Calculator"),
            DashButton(routing: '/listView', title: "List View Builder"),
            DashButton(routing: '/calculator', title: "Tutorial Calculator"),
            DashButton(routing: '/buttons', title: "Buttons"),
          ],
        ),
      ),
    );
  }
}
