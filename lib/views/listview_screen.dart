import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/custom_appbar.dart';

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45),
        child: CustomAppbar(
          appBarTitle: "Listview",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Horizontal Listview",
              style: GoogleFonts.montserrat(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 100,
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index){
                    return Container(
                      color: Colors.blue[100 + index * 100 % 200],
                      width: 100,
                      child: Center(
                        child: Text(
                          'Item $index',
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(height: 15,),
            Text(
              "Vertical Listview",
              style: GoogleFonts.montserrat(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: SizedBox(
                child: ListView.builder(
                  itemCount: 10,
                    scrollDirection: Axis.vertical,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index){
                      return Container(
                        color: Colors.red[100 + index * 100 % 200],
                        height: 100,
                        child: Center(
                          child: Text(
                            'Item $index',
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
