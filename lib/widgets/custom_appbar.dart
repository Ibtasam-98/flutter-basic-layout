import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppbar extends StatelessWidget {
  String appBarTitle;

  CustomAppbar({required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      title: Text(appBarTitle,style: GoogleFonts.quicksand(fontSize: 18,color: Colors.white),
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xffacb6e5),
                  Color(0xff86fde8)
                ]
            )
        ),
      ),
    );
  }
}
