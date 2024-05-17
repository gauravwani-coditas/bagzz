import 'package:bagzz/features/home/presentation/bloc/shop_now_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

Widget getBagsGridView(BuildContext context) {
  List<String> imagePaths = [
    "images/bags/bag1.png",
    "images/bags/bag2.png",
    "images/bags/bag3.png",
    "images/bags/bag4.png"
  ];

  List<String> bagNames = [
    "Artsy",
    "Berkely",
    "Capucinus",
    "Monogram",
  ];

  return SizedBox(
    height: 500,
    child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.8095,
        physics: const NeverScrollableScrollPhysics(),
        
        children: imagePaths
            .map(
              (imagePath) => Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                    color: const Color.fromRGBO(241, 241, 241, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 31,
                            ),
                            Image.asset(
                              imagePath,
                              width: 111,
                              height: 111,
                            ),
                            Image.asset(
                              "images/app_bar_images/heart_icon.png",
                              height: 12.57,
                              width: 16,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 11,
                        ),
                        Text(
                          bagNames[imagePaths.indexOf(imagePath)],
                          style: GoogleFonts.playfairDisplay(
                              fontWeight: FontWeight.w700, fontSize: 18),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Expanded(
                          child: TextButton(
                              onPressed: () {
                                BlocProvider.of<HomePageBloc>(context)
                                    .add(OnClickedShopNowEvent());
                              },
                              child: Container(
                                child: Column(
                                  children: [
                                    Text(
                                      "SHOP NOW",
                                      style: GoogleFonts.workSans(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Colors.black),
                                    ),
                                    Container(
                                      height: 2,
                                      width: 88,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                              )),
                        )
                      ],
                    )),
              ),
            )
            .toList()),
  );
}
