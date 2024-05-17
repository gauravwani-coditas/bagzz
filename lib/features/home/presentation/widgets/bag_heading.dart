import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

Widget getBagHeading() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image.asset(
        "images/bags/bag1.png",
        width: 150,
        height: 170,
      ),
      const Spacer(),
      Padding(
        padding: const EdgeInsets.only(top: 12.57),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Artsy",
              style: GoogleFonts.playfairDisplay(
                  fontWeight: FontWeight.w700, fontSize: 22),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              "Wallet with chain",
              style: GoogleFonts.workSans(
                  fontWeight: FontWeight.w400, fontSize: 14,),
            ),
            Text("Style #36252 0YK0G 1000",
                style: GoogleFonts.workSans(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color:Color.fromRGBO(132, 132,132, 1),
                )),
            const SizedBox(
              height: 9,
            ),
            Text(
              "\$564",
              style: GoogleFonts.workSans(
                  fontWeight: FontWeight.w700, fontSize: 20),
            ),
             OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            
                          ),
                        ),
                      ),
                      child:  Text("BUY NOW",style: GoogleFonts.workSans(fontSize: 16),),),
            TextButton(
                onPressed: () {},
                child: Column(
                  children: [
                    Text("ADD TO CART",
                        style: GoogleFonts.workSans(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                    Container(
                      color: Colors.black,
                      width: 94,
                      height: 2,
                    ),
                  ],
                ))
          ],
        ),
      ),
      Image.asset("images/navigation_bar_icons/open_heart_icon.png"),
    ],
  );
}
