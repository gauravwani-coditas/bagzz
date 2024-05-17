import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';


Widget getCarouelStack(BuildContext context) {
  List<String> imagePathList = [
    "images/carousel_images/carousel_image_1.png",
    "images/carousel_images/carousel_image_2.png",
  ];

  CarouselController myCarouselController = CarouselController();

  return Stack(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: CarouselSlider.builder(
          carouselController: myCarouselController,
          itemCount: imagePathList.length,
          itemBuilder: (context, index, realIndex) => Container(
            child: Image.asset(
              imagePathList[index],
              fit: BoxFit.cover,
            ),
          ),
          options: CarouselOptions(autoPlay: true, viewportFraction: 1),
        ),
      ),
      Positioned(
        top: 75,
        left: 258,
        child: Center(
          child: Text(
            "This\nseason's\nlatest",
            style: GoogleFonts.playfairDisplay(
              fontWeight: FontWeight.w700,
              color: Colors.black,
              backgroundColor: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
      ),
      Positioned(
        top: 75 + 100,
        left: 258,
        child: Center(
          child: Row(
            children: [
              GestureDetector(
                  onTap: () {
                    myCarouselController.previousPage();
                  },
                  child: Container(
                    width: 51,
                    child: Image.asset(
                        "images/navigation_bar_icons/left_arrow.png"),
                  )),
              const SizedBox(
                width: 5,
              ),
              GestureDetector(onTap: (){
                myCarouselController.nextPage();
              }, child: Image.asset("images/navigation_bar_icons/right_arrow.png"))
            ],
          ),
        ),
      ),
    ],
  );
}
