import 'package:flutter/material.dart';
import 'package:whats_app_task/features/tabs/1_home/view/screens/main_tab.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainTab(),
    );
  }
}
