import 'dart:io';

import 'package:flutter/widgets.dart';

void main() {
  Map<String, String> env = Platform.environment;
  env.forEach((k, v) => print("Key=$k Value=$v"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        textDirection: TextDirection.ltr,
        children: [
          Image.asset(
            'assets/pass.png',
          ),
          Image.asset(
            'assets/fail.png',
            opacity: const AlwaysStoppedAnimation(0.001),
          ),
        ],
      ),
    );
  }
}
