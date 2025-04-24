import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BackgroundImageScreen extends StatelessWidget {
  const BackgroundImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,// Important for transparent Appbar
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Make appbar Transparent
        title: Text(
          "Background Image",
          style: GoogleFonts.quicksand(
              color: Colors.white,
              fontSize: 18
          ),
        ),
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.white,),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background_image.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          // add some show to text
          Center(
            child: Text(
              "Flutter Google Fonts",
              style: GoogleFonts.lobster(
                color: Colors.white,
                fontSize: 34,
                shadows: [
                  Shadow(
                      blurRadius: 10.0,
                    color: Colors.pink,
                    offset: Offset(2.0,2.0,),
                  )
                ]
              ),
            ),
          )
        ],
      ),
    );
  }
}


