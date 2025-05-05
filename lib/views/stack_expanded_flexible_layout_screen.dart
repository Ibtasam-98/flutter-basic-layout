import 'package:flutter/material.dart';
import 'package:layout/views/simple_row_column_layout_screen.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/custom_button.dart';

class StackExpandedFlexibleLayoutScreen extends StatelessWidget {
  const StackExpandedFlexibleLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blue,
      //   title: Text("Combined Layout",style: TextStyle(color: Colors.white),),
      // ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45),
        child: CustomAppbar(
          appBarTitle: "Combined Layout",
        ),
      ),
      body: Stack(
        children: [
          // 1. Background Container using Positioned.fill
          // Positioned.fill makes the child widget take uo all avaliable space
          // with in the stack, It's usull for creating ackground layers.
          Positioned.fill(
              child: Container(
                color: Colors.blue[100],
                child: Text(
                  "Background using Positioned.fill",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue[800],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
          ),

          //2. Top layered container using positioned
          // positioned allows you to control the next exact position and size
          // of a widget within th stack using properties like otp, bottom,
          //left, right, width, and height.
          Positioned(
            top: 20,
            left: 20,
            child: Container(
              width: 150.0,
              height: 80,
              color: Colors.red,
              child: Center(
                child: Text(
                    "Positioned Item",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          
          // 3. Another positioned Container
          Positioned(
            top: 50,
            right: 30,
            child: Container(
              padding: EdgeInsets.all(8.0),
              color: Colors.yellow[400],
              child: Text("Another Positioned widget"),
            ),
          ),
          
          // 4. Bottom Row and Expanded and Flexible Container
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              // Flexible Container
              // It allows child to be flexible but still have constraints.
              // The flex factor determines how much of the avaliable spaces.
              // the widget will stake relative to other Flexible or Expanded
              // widgets in the same rows and column
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    height: 100,
                    color: Colors.green,
                    child: Center(
                        child: Text(
                            "Flexible Flex 2",
                          style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        )),
                  ),
                ),


                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    height: 100,
                    color: Colors.green[300],
                    child: Text(
                        "Expanded (Flex 1)",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),

                  ),
                )
              ],
            ),
          ),

          //5. Another aligned Widget - top right
          Align(
            alignment: Alignment.center,
            child:  CustomButton(
              buttonHeight: 45,
              buttonWidth: MediaQuery.of(context).size.width - 20,
              buttonTitle: "Open Layout 1",
              gradientEnd: Alignment.topCenter,
              gradientBegin: Alignment.bottomCenter,
              gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.indigo,
                  ]
              ),
              onPressed:(){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SimpleRowColumnLayoutScreen()));
              } ,
              borderRadius: BorderRadius.circular(45),
            ),
          )

        ],
      ),
    );
  }
}
