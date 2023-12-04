import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic View'),
        centerTitle: true,
        elevation: 0,
      ),
      body: const Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber)),
                labelText: 'Name',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber)),
                  labelText: 'Password'),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                height: 50,
                width: 100,
                child: ElevatedButton(onPressed: (null), child: Text("Hwllo")))
          ],
        ),
        
      ),
    );
  }
}
