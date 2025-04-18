import 'package:flutter/material.dart';

class SimpleRowColumnLayoutScreen extends StatelessWidget {
  const SimpleRowColumnLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 80.0,
                height: screenHeight,
                color: Colors.red,
                child: Center(
                  child: Text("Left",
                    style: TextStyle(
                      color:Colors.white,
                      fontSize: 20.0
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 80.0,
                    width: 80.0,
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        "Middle",
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 80.0,
                    width: 80.0,
                    color: Colors.deepPurple,
                    child: Center(
                      child: Text(
                        "Middle",
                      ),
                    ),
                  )
                ],
              ),
              Container(
                width: 80,
                height: screenHeight,
                color: Colors.orange,
                child: Center(
                  child: Text("Right",
                    style: TextStyle(
                        color:Colors.white,
                        fontSize: 20.0
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
