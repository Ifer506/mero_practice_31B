import 'package:batch_31b/views/arithmetic_view.dart';
import 'package:batch_31b/views/buttons.dart';
import 'package:batch_31b/views/calculator_view.dart';
import 'package:batch_31b/views/dashboard_view.dart';
import 'package:batch_31b/views/listbuilder_view.dart';
import 'package:batch_31b/views/my_calculator.dart';

appRoute() {
  const String dashboardRoute = '/';
  return {
    "/arithmetic": (context) => const ArithmeticView(),
    "/": (context) => const DashBoardView(),
    "/buttons": (context) => const Buttons(),
    "/calculator": (context) => const CalculatorViews(),
    "/listView": (context) => const ListViewTest(),
    "/myCalculator": (context) => const MyCalculator()
  };
}
