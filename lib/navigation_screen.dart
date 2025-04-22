
import 'package:flutter/material.dart';
import 'package:layout/background_image_screen.dart' show BackgroundImageScreen;
import 'package:layout/simple_row_column_layout_screen.dart';
import 'package:layout/stack_expanded_flexible_layout_screen.dart';

import 'gradient_background_screen.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Navigation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StackExpandedFlexibleLayoutScreen()));
              },
              child: Text("Open Layout 1",style: TextStyle(color: Colors.white),),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
              ),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SimpleRowColumnLayoutScreen()));
              },
              child: Text("Open Layout 2",style: TextStyle(color: Colors.white),),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
              ),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BackgroundImageScreen()));
              },
              child: Text("Open Background Image Screen",style: TextStyle(color: Colors.white),),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.tealAccent,
              ),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GradientBackgroundScreen()));
              },
              child: Text("Open Screen with Gradient",style: TextStyle(color: Colors.black),),
            ),

          ],
        ),
      ),
    );
  }
}
