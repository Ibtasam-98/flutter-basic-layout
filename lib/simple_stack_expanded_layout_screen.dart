import 'package:flutter/material.dart';

class SimpleStackExpandedLayoutScreen extends StatelessWidget {
  const SimpleStackExpandedLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Combined Layout",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
      body: Column(
        children: [
          // Section 1: We will use Stack for Banner with overlay using container
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.red,
                child: Center(
                  child: Text(
                    "Banner Area",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text("Awesome Banner Text",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),

          // Section 2: We will use Expanded for a Content Area
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    "Main Content Area",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "This section users Expanded to take up the remaining verticle sapce",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Flexible(
                        flex:2,
                        child: Container(
                          height: 80,
                          color: Colors.amberAccent[200],
                          child: Center(
                            child: Text(
                              "Flexible 1 (Flex 2)"
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Flexible(
                        flex:1,
                        child: Container(
                          height: 80,
                          color: Colors.amberAccent[200],
                          child: Center(
                            child: Text(
                                "Flexible 2 (Flex 1)"
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Expanded( // Nested Expanded for Scrollable content
                    child: SingleChildScrollView(
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magnaaliqua. Ut enim ad minim veniam, quis nostrud exercitatio ullamco laboris nisi ut aliquip ex ea commodo consequat.nsectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magnaaliqua. Ut enim ad minim veniam, quis nostrud exercitatio ullamco laboris nisi ut aliquip ex ea commodo co  Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ),

          // Section 3:  Fixed Height Row with Flexible Elements
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Container(
                  height: 80,
                  width: 60,
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      "Fixed Height Width",
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Flexible(
                  child: Container(
                    height: 80,
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        "Flexible fills remaining",
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
