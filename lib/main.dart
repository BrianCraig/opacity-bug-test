import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
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
