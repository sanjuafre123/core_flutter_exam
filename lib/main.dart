import 'package:core_flutter_exam/componetns/Add_data_Screen/dataScreen.dart';
import 'package:flutter/material.dart';
import 'componetns/Detail/DetailsScreen.dart';
import 'componetns/Homepage/HomeScreen.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) =>  const HomePage(),
        '/Detail' : (context) =>  const DetailsScreen(),
        '/data' : (context) =>  const DataScreen(),
      },
    );
  }
}
