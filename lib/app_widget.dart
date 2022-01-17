import 'package:flutter/material.dart';
import 'package:flutter_table_with_dio_and_provider/home/view/home_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {'/home': (_) => HomePage()},
    );
  }
}
