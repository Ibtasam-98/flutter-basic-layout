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
                height: screenHeight,
                width: 80.0,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    "Left",
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 80.0,
                    width: 80.0,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        "Middle Top",
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 80.0,
                    width: 80.0,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        "Middle Bottom",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: screenHeight,
                width: 80.0,
                color: Colors.purple,
                child: Center(
                  child: Text(
                    "Right",
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
