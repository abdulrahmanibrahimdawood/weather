import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//4ff0c011c6b3c0990cd10ae14fed2058
//http://api.openweathermap.org/data/2.5/weather?q=egypt&appid=4ff0c011c6b3c0990cd10ae14fed2058
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Container());
  }
}
