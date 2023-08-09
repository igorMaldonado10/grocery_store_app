import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import 'src/auth/sign_in_screen.dart';

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
      title: 'Flutter Demo',
      // darkTheme: DSTheme.darkThemeData,
      theme: DSTheme.lightThemeData,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      //   useMaterial3: true,
      // ),
      home: const SignScreen(),
    );
  }
}
