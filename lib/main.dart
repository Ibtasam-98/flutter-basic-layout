import 'package:flutter/material.dart';
import 'package:layout/simple_row_column_layout_screen.dart';
import 'package:layout/stack_expanded_flexible_layout_screen.dart';
void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StackExpandedFlexibleLayoutScreen(),
    );
  }
}
