import 'package:batch_31b/core/routes/app_routes.dart';
import 'package:batch_31b/core/theme/theme_view.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: appRoute(),
      debugShowCheckedModeBanner: false,
      
      theme: themePackage(),
    );
  }
}
