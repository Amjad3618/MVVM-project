import 'package:flutter/material.dart';
import 'package:mvvm_1/Utils/Routes/main_routes.dart';
import 'package:mvvm_1/Utils/Routes/routes_names.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// viedo number 9 in pending at 12 minutes 30 seconds
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
