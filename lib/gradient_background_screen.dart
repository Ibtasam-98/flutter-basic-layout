import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientBackgroundScreen extends StatelessWidget {
  const GradientBackgroundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                // use can set position of gradient
                begin: Alignment.center,
                end: Alignment.centerLeft,
                colors:[
                  Color(0xffD1913C),
                  Color(0xffFFD194),
                ],
              ),
            ),
          ),
        title: Text(
            "Gradient Background",
          style: GoogleFonts.quicksand(
            fontSize: 18,
            color: Colors.black
          ),
        ),
        centerTitle: false,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back,color: Colors.black,size: 20,),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            // use can set position of gradient
            begin: Alignment.center,
            end: Alignment.centerLeft,
              colors:[
                Color(0xffD1913C),
                Color(0xffFFD194),
              ],
          )
        ),
        child: Center(
          child: Text(
            "Gradient Body",
            style: GoogleFonts.quicksand(
              fontSize: 18,
              color: Colors.black
            ),
          ),
        ),
      ),
    );
  }
}
