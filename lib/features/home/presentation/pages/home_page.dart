import 'package:bagzz/features/home/presentation/widgets/bags_grid_view.dart';
import 'package:bagzz/features/home/presentation/widgets/carousel.dart';
import 'package:bagzz/features/home/presentation/widgets/shop_by_categories_gird_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:google_fonts/google_fonts.dart';

Widget getHomePage(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        // Stack(
        //   children: <Widget>[
        //     getCarousel(context),
        //     Positioned(
        //       top: 75,
        //       left: 258,
        //       child: Center(
        //         child: Text(
        //           "This\nseason's\nlatest",
        //           style: GoogleFonts.playfairDisplay(
        //             fontWeight: FontWeight.w700,
        //             color: Colors.black,
        //             backgroundColor: Colors.white,
        //             fontSize: 22,
        //           ),
        //         ),
        //       ),
        //     ),

        //     Positioned(
        //       top: 75+100,
        //       left: 258,
        //       child: Center(
        //         child: Row(
        //           children: [
        //             GestureDetector(onTap: () {
                    
        //             }, child: Image.asset("images/navigation_bar_icons/left_arrow.png")),
        //             const SizedBox(width: 5,),
        //             Image.asset("images/navigation_bar_icons/right_arrow.png")
        //           ],
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        getCarouelStack(context),
        getBagsGridView(context),
        // const SizedBox(height: 37,),
        TextButton(
            onPressed: () {},
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "CHECK ALL LATEST",
                  style: GoogleFonts.workSans(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            )),

        const SizedBox(
          height: 48,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 10,
            ),
            Text("Shop by categories",
                style: GoogleFonts.playfairDisplay(
                    fontWeight: FontWeight.w700, fontSize: 24)),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        getShopByCategoryGridView(),

        const SizedBox(
          height: 24,
        ),

        TextButton(
            onPressed: () {},
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "BROWSE ALL CATEGORIES",
                  style: GoogleFonts.workSans(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            )),

        const SizedBox(
          height: 100,
        ),
      ],
    ),
  );
}
