import 'package:flutter/material.dart';
import 'package:hello_there/pages/main_page.dart';

/// Entry point.
void main() {
  runApp(const Main());
}
/// Default [Main] class.
class Main extends StatelessWidget {
  /// [Main] Constructor.
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Task',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
        home: const MainPage(),
    );
  }
}
