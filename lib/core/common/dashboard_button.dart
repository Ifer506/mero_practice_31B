import 'package:flutter/material.dart';

class DashButton extends StatelessWidget {
  const DashButton({super.key, required this.routing, required this.title});

  final String routing;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, routing);
        },
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.amber, borderRadius: BorderRadius.circular(12)),
          child: Text(title),
        ),
      ),
    );
  }
}
