
import 'package:flutter/material.dart';
import 'package:layout/views/background_image_screen.dart' show BackgroundImageScreen;
import 'package:layout/views/simple_row_column_layout_screen.dart';
import 'package:layout/views/stack_expanded_flexible_layout_screen.dart';
import 'package:layout/widgets/custom_button.dart';

import 'gradient_background_screen.dart';
import 'image_screen.dart';

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

            CustomButton(
              buttonHeight: 45,
              buttonWidth: MediaQuery.of(context).size.width - 20,
              buttonTitle: "Open Layout 1",
              gradientEnd: Alignment.topCenter,
              gradientBegin: Alignment.bottomCenter,
              gradient: LinearGradient(
                colors: [
                  Colors.orangeAccent,
                  Colors.red,
                ]
              ),
              onPressed:(){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SimpleRowColumnLayoutScreen()));
              } ,
              borderRadius: BorderRadius.circular(45),
            ),
            SizedBox(height: 10),
            CustomButton(
              buttonHeight: 45,
                buttonWidth: MediaQuery.of(context).size.width - 20,
                buttonTitle: "Open Layout 2",
                buttonBackgroundColor: Colors.blue,
                onPressed:(){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StackExpandedFlexibleLayoutScreen()));
                } , 
                borderRadius: BorderRadius.circular(45),
            ),
            SizedBox(height: 10),
            CustomButton(
              buttonHeight: 45,
              buttonWidth: MediaQuery.of(context).size.width - 20,
              buttonTitle: "Open Image Screen",
              buttonBackgroundColor: Colors.teal,
              onPressed:(){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BackgroundImageScreen()));
              } ,
              borderRadius: BorderRadius.circular(45),
            ),
            SizedBox(height: 10),
            CustomButton(
              buttonHeight: 45,
              buttonWidth: MediaQuery.of(context).size.width - 20,
              buttonTitle: "Open Screen with Gradient",
              gradientEnd: Alignment.bottomCenter,
              gradientBegin: Alignment.topCenter,
              gradient: LinearGradient(
                  colors: [
                    Colors.red,
                    Colors.deepOrangeAccent,
                  ]
              ),
              onPressed:(){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GradientBackgroundScreen()));
              } ,
              borderRadius: BorderRadius.circular(45),
            ),
          ],
        ),
      ),
    );
  }
}
