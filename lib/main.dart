import 'package:flutter/material.dart';
import 'package:mvvm_1/Utils/Routes/main_routes.dart';
import 'package:mvvm_1/Utils/Routes/routes_names.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // video number 5 is completed
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      initialRoute: RoutesNames.login,
      onGenerateRoute: MainRoutes.generateRoutes,
    );
  }
}
