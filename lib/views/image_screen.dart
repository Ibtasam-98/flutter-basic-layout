import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Asset Image",
          style: GoogleFonts.quicksand(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back,color: Colors.white,size: 20,),
        ),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Image from Asset Folder : ",
              style: GoogleFonts.quicksand(
                  color: Colors.black,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10,),
            Image(
              image: AssetImage("assets/background_image.jpg"),
              width: 200,
              height: 200,
            ),
            SizedBox(height: 10,),
            Text("Image from Network: ",
              style: GoogleFonts.quicksand(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            Image.network(
              "https://blog.codemagic.io/uploads/covers/CM-Flutter-pros-cons.jpg",
              width: 200,
              height: 200,
              errorBuilder: (context, error, stackTrace) =>  Text(
                "Error loading Image form Network",
                style: GoogleFonts.quicksand(
                  fontSize: 16,
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
