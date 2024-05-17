import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget getWishListBags(String imagePath,String bagName,String bagFeature) {
  return Column(
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
           imagePath,
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
                  bagName,
                  style: GoogleFonts.playfairDisplay(
                      fontWeight: FontWeight.w700, fontSize: 22),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                 bagFeature,
                  style: GoogleFonts.workSans(
                      fontWeight: FontWeight.w400, fontSize: 14),
                ),
                Text("Style #36252 0YK0G 1000",
                    style: GoogleFonts.workSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color:const Color.fromRGBO(132, 132,132, 1),
                    )),
                const SizedBox(
                  height: 9,
                ),
                TextButton(
                    onPressed: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("REMOVE",
                            style: GoogleFonts.workSans(
                                color: Colors.black, fontWeight: FontWeight.w500)),
                        Container(
                          color: Colors.black,
                          width: 59,
                          height: 2,
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
      Container(
       
        height: 1,
        color:Colors.black,
      )
    ],
  );
}
