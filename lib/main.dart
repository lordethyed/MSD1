import 'package:flutter/material.dart';
import 'package:msd1/routing/routing_const.dart';
import 'package:msd1/routing/routes.dart';
import 'presentation/screens/auth_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => RouterProject.generateRoute(settings),
      initialRoute: AuthRoute,
      title: '-=MSD1=-',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AuthScreen(),
    );
  }
}
