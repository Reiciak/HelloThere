import 'package:flutter/material.dart';
import 'package:hello_there/core/random_color_generator.dart';

/// class [MainPage] contains the main page of the application.
class MainPage extends StatefulWidget {
  /// [MainPage] Constructor.

  const MainPage({super.key});
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  /// initial color of app -> white
  Color _backgroundColor = Colors.white;

  /// instance of [RandomColorGenerator] class
  final RandomColorGenerator randomColor = RandomColorGenerator();


  @override
  Widget build(BuildContext context){
    return GestureDetector(
        onTap: (){
          setState(() {
            _backgroundColor = randomColor.generateRandomColor();
          });
        },
        child: Scaffold (
          backgroundColor: _backgroundColor,
        )
    );
  }
}
