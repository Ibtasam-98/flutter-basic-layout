import 'package:flutter/material.dart';
import 'package:layout/views/simple_row_column_layout_screen.dart';

import 'views/navigation_screen.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigationScreen(), // main entry point of application
    );
  }
}
