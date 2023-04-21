import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Align(
          alignment: const AlignmentDirectional(0, 0),
          child: Container(
            width: 1200,
            decoration: const BoxDecoration(
              color: Colors.white
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      
                      children:  [
                        const Icon(Icons.circle, color: Colors.yellowAccent,),
                        const SizedBox(width: 7,),
                        Text('UTKARSH', style: GoogleFonts.chivo(color: Colors.black, fontWeight: FontWeight.bold),)
                      ],
                    ), 
                    Row(
                     
                      children: [
                        TextButton(onPressed: (){}, child: Text('Home', style: GoogleFonts.chivo(color: Colors.black, fontWeight: FontWeight.bold),))
                      ],
                    )
                  ],
                )
              ],

            )
          ),
        ),
      ),
    );
  }
}