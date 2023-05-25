import 'package:flutter/material.dart';
import 'package:view_test/screens/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: const Color.fromARGB(255, 30, 30, 30),
          brightness: Brightness.dark,
          dividerTheme: DividerThemeData(
              color: Colors.white.withOpacity(.5), thickness:.7)),
      home: const HomeScreen(),
    );
  }
}
